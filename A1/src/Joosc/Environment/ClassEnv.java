package Joosc.Environment;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.InterfaceDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.*;
import Joosc.ASTModel.Program;
import Joosc.ASTModel.Type;
import Joosc.Exceptions.NamingResolveException;
import Joosc.util.Pair;

import java.util.*;

public class ClassEnv implements Env {
    TypeDeclr typeDeclr;
    GlobalEnv parent;
    Program program;
    protected HashMap<String, FieldsVarInfo> fields = new HashMap<>();
    ArrayList<String> packageDeclr;

    HashMap<String, ArrayList<String>> resolvedTypes = new HashMap<>();

    // will only resolve when we actually use it...
    HashMap<String, ArrayList<ArrayList<String>>> onDemandImportTypes = new HashMap<>();
    HashMap<String, ArrayList<String>> samePackage = new HashMap<>();

    // Method MethodInfo
    HashMap<String, MethodInfo> methodSignature = new HashMap<>();
    HashMap<String, MethodInfo> fullMethodSignature = new HashMap<>();
    HashMap<String, MethodInfo> implicitDeclr = new HashMap<>();
    private boolean fullMethodSigComplete = false;

    HashMap<String, MethodInfo> constructorSignature = new HashMap<>();

    // Hierarchy
    HashSet<ArrayList<String>> superSet = new HashSet<>();
    HashSet<ArrayList<String>> fullSuperSet = new HashSet<>();
    private boolean fullSuperSetComplete = false;

    ArrayList<LocalEnv> localEnvs = new ArrayList<>();

    ArrayList<String> javaLangObjectName = new ArrayList<>(Arrays.asList("java", "lang", "Object"));

    public ClassEnv(Program program, GlobalEnv parent) {
        typeDeclr = program.getTypeDeclr();
        typeDeclr.addEnv(this);
        this.parent = parent;
        this.program = program;
        packageDeclr = program.getPackageDeclr();
        constructLocalEnvironment();
    }

    public void resolveImports() throws NamingResolveException {
        ArrayList<ArrayList<String>> singleTypeImports = program.getSingleTypeImport();
        ArrayList<ArrayList<String>> importOnDemand = program.getOnDemandTypeImport();
        HashMap<String, ArrayList<String>> singleImportedClasses = new HashMap<>();
        importOnDemand.add(new ArrayList<>(Arrays.asList("java", "lang")));

        // Enclosing Class
        resolvedTypes.put(typeDeclr.getSimpleName(), new ArrayList<>(Arrays.asList(typeDeclr.getSimpleName())));

        // Single Type import
        for (ArrayList<String> sImport : singleTypeImports) {
            String simpleName = sImport.get(sImport.size() - 1);
            // clashes with type def
            if (!sImport.equals(typeDeclr.getCanonicalName()) && simpleName.equals(typeDeclr.getSimpleName())) {
                throw new NamingResolveException("type name " + typeDeclr.getSimpleName() + " clashes with import");
            }

            // no two simple name
            if (singleImportedClasses.containsKey(simpleName) && !sImport.equals(singleImportedClasses.get(simpleName))) {
                throw new NamingResolveException("duplicated imported type " + simpleName);
            }

            // find import in the available packages
            if (!parent.findPackageName(sImport, false)) {
                throw new NamingResolveException("Import name not found :" + String.join(".", sImport));
            }
            singleImportedClasses.put(simpleName, sImport);
        }

        resolvedTypes.putAll(singleImportedClasses);

        for (ArrayList<String> dImport : importOnDemand) {
            if (!parent.findPackageName(dImport, true)) {
                throw new NamingResolveException("Import package name not found :" + String.join(".", dImport) + ".*");
            }

            GlobalEnv.PackageNames layer = parent.getPackageLayer(dImport);
            for (String typeName : layer.types) {
                ArrayList<String> qualifiedName = new ArrayList<>(dImport);
                qualifiedName.add(typeName);
                ArrayList<ArrayList<String>> importedTypeNames = onDemandImportTypes.getOrDefault(typeName, null);
                if (importedTypeNames == null) {
                    importedTypeNames = new ArrayList<>();
                    onDemandImportTypes.put(typeName, importedTypeNames);
                }
                if (!importedTypeNames.contains(qualifiedName)) {
                    importedTypeNames.add(qualifiedName);
                }
            }
        }

        ArrayList<String> packageName = program.getPackageDeclr();
        GlobalEnv.PackageNames layer;
        if (packageName.size() == 0) {
            layer = parent.defaultPackage;
        } else {
            layer = parent.getPackageLayer(packageName);
        }

        for (String typeName : layer.types) {
            ArrayList<String> qualifiedName = new ArrayList<>(packageName);
            qualifiedName.add(typeName);
            samePackage.put(typeName, qualifiedName);
        }
    }

    private void resolveFields() throws NamingResolveException {
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<FieldDeclr> fieldDeclrs = ((ClassDeclr) typeDeclr).getFields();
            for (FieldDeclr fieldDeclr : fieldDeclrs) {
                String fieldName = fieldDeclr.getName();
                if (!fields.containsKey(fieldName)) {
                    fields.put(fieldName, typeResolve(fieldName, fieldDeclr.getType()));
                } else {
                    throw new NamingResolveException("found more than one field with name " + fieldDeclr.getName());
                }
            }
        }
    }

    private void addImplicitDeclr() throws NamingResolveException {
        // interface has no direct parent - implicit declaration
        ClassEnv javaLangObject = parent.getClassEnv(javaLangObjectName);
        for (MethodDeclr method : javaLangObject.typeDeclr.getMethods()) {
            ArrayList<FieldsVarInfo> paramList = new ArrayList<>();
            for (Pair<Type, String> param : method.getFormalParamList()) {
                paramList.add(typeResolve(param.getValue(), param.getKey()));
            }

            MethodInfo tempMethodInfo =
                    new MethodInfo(new MethodDeclr(method), typeResolve(method.getName(), method.getType()), paramList);
            tempMethodInfo.modifiers.add(Symbol.Abstract);
            implicitDeclr.put(tempMethodInfo.getSignatureStr(), tempMethodInfo);
        }
    }

    private void checkReplace(MethodInfo parentMethodInfo, MethodInfo declaredMethod, ClassEnv parentClassEnv) throws NamingResolveException {
        // TODO: change here after MethodInfo.returnType is changed to String
        String parentReturnTypStr = parentMethodInfo.returnType.getFullTypeName()
                + (parentMethodInfo.returnType.isTypeArray() ? "[]" : "");
        String declaredReturnTypeStr = declaredMethod.returnType.getFullTypeName()
                + (declaredMethod.returnType.isTypeArray() ? "[]" : "");

        if (!parentReturnTypStr.equals(declaredReturnTypeStr)) {
            throw new NamingResolveException("Class/Interface " + typeDeclr.getSimpleName()
                    + " must not contain two methods with the same signature but different return types with name "
                    + parentMethodInfo.getSignatureStr());
        }
        if (parentMethodInfo.modifiers.contains(Symbol.Static)
                && !declaredMethod.modifiers.contains(Symbol.Static)) {
            throw new NamingResolveException("Nonstatic method " + declaredMethod.getSignatureStr()
                    + " in class " + typeDeclr.getSimpleName() + " must not replace a static method "
                    + declaredMethod.getSignatureStr()
                    + " in parent class "
                    + parentClassEnv.typeDeclr.getSimpleName());
        }
        if (parentMethodInfo.modifiers.contains(Symbol.Public)
                && declaredMethod.modifiers.contains(Symbol.Protected)) {
            throw new NamingResolveException("Protected method " + declaredMethod.getSignatureStr()
                    + " in class " + typeDeclr.getSimpleName() + " must not replace a public method "
                    + declaredMethod.getSignatureStr()
                    + " in parent class "
                    + parentClassEnv.typeDeclr.getSimpleName());
        }
        if (parentMethodInfo.modifiers.contains(Symbol.Final)) {
            throw new NamingResolveException("Method " + declaredMethod.getSignatureStr()
                    + " in class " + typeDeclr.getSimpleName() + " must not replace a final method "
                    + declaredMethod.getSignatureStr()
                    + " in parent class "
                    + parentClassEnv.typeDeclr.getSimpleName());
        }
    }

    private void checkInherit(MethodInfo parentMethodInfo, ClassEnv parentClassEnv) throws NamingResolveException {
        if (typeDeclr instanceof ClassDeclr) {
            if (parentMethodInfo.modifiers.contains(Symbol.Abstract)
                    && (!typeDeclr.getModifiers().contains(Symbol.Abstract))) {
                throw new NamingResolveException("Class " + typeDeclr.getSimpleName()
                        + " that inherits abstract methods " + parentMethodInfo.getSignatureStr()
                        + " must be abstract.");
            }

            // inherited abstract method from interface w. no implementation in current class
            if (parentClassEnv.typeDeclr instanceof InterfaceDeclr
                    && !typeDeclr.getModifiers().contains(Symbol.Abstract)) {
                throw new NamingResolveException("Class " + typeDeclr.getSimpleName()
                        + " that contains inherited methods " + parentMethodInfo.getSignatureStr()
                        + " with no implementation must be abstract.");
            }
        }
    }

    private void resolveClassDeclrMethodNames() throws NamingResolveException {
        if (typeDeclr instanceof InterfaceDeclr && superSet.isEmpty()) {
            addImplicitDeclr();
        }

        for (MethodDeclr method : typeDeclr.getMethods()) {
            ArrayList<FieldsVarInfo> paramList = new ArrayList<>();
            for (Pair<Type, String> param : method.getFormalParamList()) {
                paramList.add(typeResolve(param.getValue(), param.getKey()));
            }

            MethodInfo tempMethodInfo =
                    new MethodInfo(new MethodDeclr(method), typeResolve(method.getName(), method.getType()), paramList);

            if (typeDeclr instanceof InterfaceDeclr) {
                tempMethodInfo.modifiers.add(Symbol.Abstract);
                // Interface methods are implicitly public
                if (!tempMethodInfo.modifiers.contains(Symbol.Public)) tempMethodInfo.modifiers.add(Symbol.Public);
            }

            if (methodSignature.containsKey(tempMethodInfo.getSignatureStr())
                    || implicitDeclr.containsKey(tempMethodInfo.signatureStr)) {
                throw new NamingResolveException("Duplicate method with same signature "
                        + tempMethodInfo.getSignatureStr() + " in class " + typeDeclr.getSimpleName());
            }

            if (typeDeclr instanceof ClassDeclr && tempMethodInfo.modifiers.contains(Symbol.Abstract)
                    && !typeDeclr.getModifiers().contains(Symbol.Abstract)) {
                throw new NamingResolveException("Class " + typeDeclr.getSimpleName()
                        + " that declares abstract methods " + tempMethodInfo.getSignatureStr() + " must be abstract.");
            }

            if (implicitDeclr.containsKey(tempMethodInfo.getSignatureStr())) {
                MethodInfo implicitDeclrMethod = implicitDeclr.get(tempMethodInfo.getSignatureStr());
                checkInherit(implicitDeclrMethod, parent.getClassEnv(javaLangObjectName));
                checkReplace(implicitDeclrMethod, tempMethodInfo, parent.getClassEnv(javaLangObjectName));
            }

            methodSignature.put(tempMethodInfo.getSignatureStr(), tempMethodInfo);
        }
    }

    void checkAllMethodsInParent(ClassEnv parentClassEnv ) throws NamingResolveException {
        for (MethodInfo methodInfo : parentClassEnv.getFullMethodSignature().values()) {
            MethodDeclr method = (MethodDeclr) methodInfo.getAst();
            ArrayList<FieldsVarInfo> paramList = new ArrayList<>();
            for (Pair<Type, String> param : method.getFormalParamList()) {
                paramList.add(typeResolve(param.getValue(), param.getKey()));
            }
            MethodInfo parentMethodInfo =
                    new MethodInfo(method, typeResolve(method.getName(), method.getType()), paramList);

            // override methods from parent
            if (methodSignature.containsKey(parentMethodInfo.getSignatureStr())) {
                MethodInfo declaredMethod = methodSignature.get(parentMethodInfo.getSignatureStr());
                checkReplace(parentMethodInfo, declaredMethod, parentClassEnv);
            }

            if(parentClassEnv.typeDeclr instanceof InterfaceDeclr) {
                // TODO: check if methods in interface is implement in parent classes
            }

            if (!fullMethodSignature.containsKey(parentMethodInfo.signatureStr)) {
                // inherited methods in ClassDeclr
                checkInherit(parentMethodInfo, parentClassEnv);
            }
            fullMethodSignature.put(parentMethodInfo.getSignatureStr(), parentMethodInfo);
        }
    }


    HashMap<String, MethodInfo> getFullMethodSignature() throws NamingResolveException {
        if (!implicitDeclr.isEmpty()) { // empty interface with only implicit declared methods
            methodSignature.putAll(implicitDeclr);
            if (methodSignature.size() == implicitDeclr.size()) {
                fullMethodSigComplete = true;
            }
        }

        // put all class declared methods
        fullMethodSignature.putAll(methodSignature);

        if (!fullMethodSigComplete) {

            if (typeDeclr instanceof ClassDeclr) {
                ArrayList<String> parentClassName = ((ClassDeclr) typeDeclr).getParentClass();
                if (parentClassName.isEmpty()) parentClassName = javaLangObjectName;
                ClassEnv parentClassEnv = parent.getClassEnv(typeResolve(parentClassName));
                checkAllMethodsInParent(parentClassEnv);
            }

            for (ArrayList<String> parentInterfaceName : typeDeclr.getParentInterfaces()) {
                ClassEnv parentInterfaceEnv = parent.getClassEnv(typeResolve(parentInterfaceName));

                // check if methods in interface is implement in parent classes
                for (MethodInfo methodInfo : parentInterfaceEnv.getFullMethodSignature().values()) {
                    if(fullMethodSignature.containsKey(methodInfo.getSignatureStr())) {

                    }
                }
                checkAllMethodsInParent(parentInterfaceEnv);


            }
            fullMethodSigComplete = true;
        }
        return fullMethodSignature;
    }

    private void resolveConstructorNames() throws NamingResolveException {
        if (typeDeclr instanceof InterfaceDeclr) {
            return;
        }
        FieldsVarInfo ctorType = new FieldsVarInfo("", typeDeclr.getCanonicalName(), false, false);
        for (ConstructorDeclr ctor : ((ClassDeclr) typeDeclr).getConstructor()) {
            ArrayList<FieldsVarInfo> paramList = new ArrayList<>();
            for (Pair<Type, String> param : ctor.getFormalParamList()) {
                paramList.add(typeResolve(param.getValue(), param.getKey()));
            }
            MethodInfo tempCtorInfo =
                    new MethodInfo(ctor, ctorType, paramList);
            if (constructorSignature.containsKey(tempCtorInfo.getSignatureStr())) {
                throw new NamingResolveException("Duplicate constructor with same signature in class/interface "
                        + String.join(".", typeDeclr.getCanonicalName()) + ". ");
            } else {
                constructorSignature.put(tempCtorInfo.getSignatureStr(), tempCtorInfo);
            }
        }
    }

    private void resolveHierarchy() throws NamingResolveException {
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<String> extend = ((ClassDeclr) typeDeclr).getParentClass();

            ClassEnv parentClassEnv;

            if (extend.size() > 0) {
                superSet.add(typeResolve(extend));
                parentClassEnv = parent.getClassEnv(typeResolve(extend));
                // Null check
                if (parentClassEnv == null) {
                    throw new NamingResolveException("Unexpected behaviour. ");
                }

                // Cannot extend interface
                if (parentClassEnv.typeDeclr instanceof InterfaceDeclr) {
                    throw new NamingResolveException("Class" + String.join(".", typeResolve(extend))
                            + " must not extend an interface. ");
                }

                // Cannot extend final
                if (parentClassEnv.typeDeclr.getModifiers().contains(Symbol.Final)) {
                    throw new NamingResolveException("Class " + String.join(".", typeResolve(extend))
                            + " must not extend a final class. ");
                }
            }
        }

        ArrayList<ArrayList<String>> interfaces = typeDeclr.getParentInterfaces();
        for (ArrayList<String> pInterface : interfaces) {
            ClassEnv parentInterfaceEnv = parent.getClassEnv(typeResolve(pInterface));

            // Cannot implement class
            if (parentInterfaceEnv.typeDeclr instanceof ClassDeclr) {
                throw new NamingResolveException("Class " + String.join(".", typeResolve(pInterface))
                        + " must not implement a class. ");
            }

            // Duplicate interfaces
            if (superSet.contains(typeResolve(pInterface))) {
                throw new NamingResolveException("Interface " + String.join(".", typeResolve(pInterface))
                        + " is already in implements clause. ");
            }
            superSet.add(typeResolve(pInterface));
        }
//        }
//        if (typeDeclr instanceof InterfaceDeclr) {
//            ArrayList<ArrayList<String>> extend = ((InterfaceDeclr) typeDeclr).getExtendsInterfaceTypes();
//            ClassEnv parentInterfaceEnv;
//            if (extend.size() > 0) {
//                for (ArrayList<String> pInterface : extend) {
//                    parentInterfaceEnv = parent.getClassEnv(typeResolve(pInterface));
//
//                    if (parentInterfaceEnv.typeDeclr instanceof ClassDeclr) {
//                        throw new NamingResolveException("Interface " + String.join(".", typeResolve(pInterface))
//                                + " must not implement a class. ");
//                    }
//
//                    if (superSet.contains(typeResolve(pInterface))) {
//                        throw new NamingResolveException("Interface " + String.join(".", typeResolve(pInterface))
//                                + " is already in implements clause. ");
//                    }
//                    superSet.add(typeResolve(pInterface));
//                }
//            }
//        }
    }

    HashSet<ArrayList<String>> getFullSuperSet() throws NamingResolveException {
        if (superSet.isEmpty()) {
            fullSuperSet.add(javaLangObjectName);
            fullMethodSigComplete = true;
        }

        if (!fullSuperSetComplete) {
            fullSuperSet.addAll(superSet);
            for (ArrayList<String> className : superSet) {
                ClassEnv classEnv = parent.getClassEnv(className);
                HashSet<ArrayList<String>> pSuper = classEnv.getFullSuperSet();

                fullSuperSet.addAll(pSuper);
                if (fullSuperSet.contains(typeDeclr.getCanonicalName())) {
                    throw new NamingResolveException("Cyclic hierarchy structure detected");
                }
            }
            fullSuperSetComplete = true;
        }
        return fullSuperSet;
    }

    private void constructLocalEnvironment() {
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<ClassBodyDeclr> methodDeclrs = ((ClassDeclr) typeDeclr).getClassBodyDeclrNodes();

            for (ClassBodyDeclr classBodyDeclr : methodDeclrs) {
                if (classBodyDeclr instanceof FieldDeclr)
                    continue;
                localEnvs.add(new LocalEnv(classBodyDeclr, this));
            }
        }
    }

    @Override
    public ArrayList<String> typeResolve(ArrayList<String> longTypeName) throws NamingResolveException {
        // qualified Name
        if (longTypeName.size() > 1) {
            String type_prefix = longTypeName.get(0);

            if (resolvedTypes.containsKey(type_prefix)) {
                throw new NamingResolveException("Prefix of a qualified name used for type");
            }

            if (!parent.findPackageName(longTypeName, false)) {
                throw new NamingResolveException("Type Not Found: " + String.join(".", longTypeName));
            } else {
                return longTypeName;
            }
        } else {
            String typeName = longTypeName.get(0);
            ArrayList<String> resolvedName = resolvedTypes.getOrDefault(typeName, null);

            if (resolvedName == null) {
                resolvedName = samePackage.getOrDefault(typeName, null);
                if (resolvedName == null) {
                    ArrayList<ArrayList<String>> onDemandCandidates = onDemandImportTypes.getOrDefault(typeName, new ArrayList<>());
                    if (onDemandCandidates.size() > 1) {
                        throw new NamingResolveException("On Demand import clashing");
                    } else if (onDemandCandidates.size() == 0) {
                        throw new NamingResolveException("Type Not Found: no import found on " + typeName);
                    } else {
                        resolvedName = onDemandCandidates.get(0);
                    }
                }
                resolvedTypes.put(typeName, resolvedName);
            }
            return resolvedName;
        }
    }

    @Override
    public FieldsVarInfo typeResolve(String name, Type type) throws NamingResolveException {
        boolean isArray = type.getKind() == Symbol.ArrayType;
        // Primitive
        if ((type.getKind() != Symbol.ClassOrInterfaceType && type.getKind() != Symbol.ArrayType)
                || (isArray && type.getArrayKind() != null && type.getArrayKind() != Symbol.ClassOrInterfaceType)) {
            if (isArray) {
                return new FieldsVarInfo(name, new ArrayList<>(Arrays.asList(type.getArrayKind().getSymbolString())), true, isArray);
            } else {
                return new FieldsVarInfo(name, new ArrayList<>(Arrays.asList(type.getKind().getSymbolString())), true, isArray);
            }
        }
        return new FieldsVarInfo(name, typeResolve(type.getNames()), false, isArray);
    }

    @Override
    public TypeDeclr getCurrentClass() {
        return typeDeclr;
    }

    @Override
    public ClassBodyDeclr getCurrentMethod() {
        return null;
    }

    @Override
    public boolean isFieldDeclared(String simpleName) {
        return fields.keySet().contains(simpleName);
    }

    @Override
    public boolean isLocalVariableDeclared(String simpleName) {
        return false;
    }

    @Override
    public void resolveName() throws NamingResolveException {
        resolveImports();
        resolveFields();
        resolveConstructorNames();
        resolveHierarchy();
        resolveClassDeclrMethodNames();

        for (LocalEnv localEnv : localEnvs) {
            localEnv.resolveLocalVariableAndAccess();
        }
    }

    public HashSet<ArrayList<String>> getSuperSet() {
        return superSet;
    }

    public void printInfo(boolean includeStdLib) {
        if (!includeStdLib && typeDeclr.getCanonicalName().contains("java")) return;
        if (typeDeclr instanceof ClassDeclr) System.out.print("[Class] ");
        if (typeDeclr instanceof InterfaceDeclr) System.out.print("[Interface] ");
        System.out.print(typeDeclr.getSimpleName() + "-> " + "\n");
        System.out.println("Direct super set:");
        for (ArrayList<String> key : superSet) {
            System.out.print("\t" + key);
        }
        System.out.print("\n");

        System.out.println("Full super set:");
        for (ArrayList<String> key : fullSuperSet) {
            System.out.print("\t" + key);
        }
        System.out.print("\n");
        System.out.println("class declared methods:");
        for (String key : methodSignature.keySet()) {
            System.out.print("\t" + key);
        }
        System.out.print("\n");
        System.out.println("full methods: ");
        for (String key : fullMethodSignature.keySet()) {
            System.out.print("\t" + key);
        }
        System.out.print("\n");
        System.out.println("-------------------------------");
    }
}
