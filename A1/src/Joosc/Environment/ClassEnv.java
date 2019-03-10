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
import Joosc.util.TreeSet;

import java.util.*;

public class ClassEnv implements Env {
    TypeDeclr typeDeclr;
    GlobalEnv globalEnv;
    Program program;
    HashMap<String, FieldsVarInfo> fields = new HashMap<>();
    ArrayList<String> packageDeclr;

    HashMap<String, ArrayList<String>> resolvedTypes = new HashMap<>();

    // will only resolve when we actually use it...
    HashMap<String, ArrayList<ArrayList<String>>> onDemandImportTypes = new HashMap<>();
    HashMap<String, ArrayList<String>> samePackage = new HashMap<>();

    // Method MethodInfo
    HashMap<String, MethodInfo> methodSignature = new HashMap<>();
    HashMap<String, MethodInfo> fullMethodSignature = new HashMap<>();
    HashMap<String, MethodInfo> implicitDeclr = new HashMap<>();
    private boolean methodContainComplete = false;

    HashMap<String, MethodInfo> constructorSignature = new HashMap<>();

    // Hierarchy
    HashSet<ArrayList<String>> superSet = new HashSet<>();
    HashSet<ArrayList<String>> fullSuperSet = new HashSet<>();
    private boolean fullSuperSetComplete = false;

    ArrayList<LocalEnv> localEnvs = new ArrayList<>();
    ArrayList<String> extendName = new ArrayList<>();
    static ArrayList<String> javaLangObjectName = new ArrayList<>(Arrays.asList("java", "lang", "Object"));

    // variable contain
    private boolean variableContainComplete = false;
    protected HashMap containedFields = new HashMap();

    public ClassEnv(Program program, GlobalEnv parent) {
        typeDeclr = program.getTypeDeclr();
        typeDeclr.addEnv(this);
        this.globalEnv = parent;
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
        resolvedTypes.put(typeDeclr.getSimpleName(), typeDeclr.getCanonicalName());

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
            if (!globalEnv.findPackageName(sImport, false)) {
                throw new NamingResolveException("Import name not found :" + String.join(".", sImport));
            }
            singleImportedClasses.put(simpleName, sImport);
        }

        resolvedTypes.putAll(singleImportedClasses);

        for (ArrayList<String> dImport : importOnDemand) {
            if (!globalEnv.findPackageName(dImport, true)) {
                throw new NamingResolveException("Import package name not found :" + String.join(".", dImport) + ".*");
            }

            GlobalEnv.PackageNames layer = globalEnv.getPackageLayer(dImport);
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
            layer = globalEnv.defaultPackage;
        } else {
            layer = globalEnv.getPackageLayer(packageName);
        }

        for (String typeName : layer.types) {
            ArrayList<String> qualifiedName = new ArrayList<>(packageName);
            qualifiedName.add(typeName);
            resolvedTypes.put(typeName, qualifiedName);
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
        // interface has no direct globalEnv - implicit declaration
        ClassEnv javaLangObject = globalEnv.getClassEnv(javaLangObjectName);
        for (MethodDeclr method : javaLangObject.typeDeclr.getMethods()) {
            if (method.getModifiers().contains(Symbol.Final)) {
                continue;
            }
            ArrayList<FieldsVarInfo> paramList = new ArrayList<>();

            if (method.getModifiers().contains(Symbol.Final)) {
                continue;
            }

            for (Pair<Type, String> param : method.getFormalParamList()) {
                paramList.add(typeResolve(param.getValue(), param.getKey()));
            }

            MethodInfo tempMethodInfo = new MethodInfo(new MethodDeclr(method), typeResolve(method.getType()), paramList);
            tempMethodInfo.modifiers.add(Symbol.Abstract);
            implicitDeclr.put(tempMethodInfo.getSignatureStr(), tempMethodInfo);
        }
    }

    private void checkReplace(MethodInfo parentMethodInfo, MethodInfo declaredMethod) throws NamingResolveException {
        // TODO: change here after MethodInfo.returnType is changed to String
        TypeInfo parentReturnType = parentMethodInfo.returnType;
        TypeInfo declaredReturnType = declaredMethod.returnType;

        if (!parentReturnType.equals(declaredReturnType)) {
            throw new NamingResolveException("Class/Interface " + typeDeclr.getSimpleName()
                    + " must not contain two methods with the same signature but different return types with name "
                    + parentMethodInfo.getSignatureStr());
        }

        if (parentMethodInfo.modifiers.contains(Symbol.Static)
                != declaredMethod.modifiers.contains(Symbol.Static)) {
            throw new NamingResolveException((declaredMethod.modifiers.contains(Symbol.Static) ? "" : "non")
                    + "static method " + declaredMethod.getSignatureStr()
                    + " in class " + typeDeclr.getSimpleName() + " must not replace a "
                    + (parentMethodInfo.modifiers.contains(Symbol.Static) ? "" : "non") + "static method "
                    + declaredMethod.getSignatureStr());
        }
        if (parentMethodInfo.modifiers.contains(Symbol.Public)
                && declaredMethod.modifiers.contains(Symbol.Protected)) {
            throw new NamingResolveException("Protected method " + declaredMethod.getSignatureStr()
                    + " in " + printType() + typeDeclr.getSimpleName() + " must not replace a public method "
                    + declaredMethod.getSignatureStr());
        }
        if (parentMethodInfo.modifiers.contains(Symbol.Final)) {
            throw new NamingResolveException("Method " + declaredMethod.getSignatureStr()
                    + " in " + printType() + typeDeclr.getSimpleName() + " must not replace a final method "
                    + declaredMethod.getSignatureStr());
        }
    }

    private MethodInfo buildMethodInfo(MethodDeclr method) throws NamingResolveException {
        ArrayList<FieldsVarInfo> paramList = new ArrayList<>();
        for (Pair<Type, String> param : method.getFormalParamList()) {
            paramList.add(typeResolve(param.getValue(), param.getKey()));
        }
        return new MethodInfo(method, typeResolve(method.getType()), paramList);
    }

    public void variableContain() {
        if (variableContainComplete) {
            return ;
        }

        if (typeDeclr instanceof ClassDeclr) {

            if (extendName.size() > 0) {
                ClassEnv parentClassEnv = globalEnv.getClassEnv(extendName);
                parentClassEnv.variableContain();
                containedFields.putAll(parentClassEnv.containedFields);
            }
        }
        containedFields.putAll(fields);
        variableContainComplete = true;
    }

    private void resolveClassDeclrMethodNames() throws NamingResolveException {
        if (typeDeclr instanceof InterfaceDeclr && superSet.isEmpty()) {
            addImplicitDeclr();
        }

        for (MethodDeclr method : typeDeclr.getMethods()) {

            MethodInfo tempMethodInfo = buildMethodInfo(method);

            if (typeDeclr instanceof InterfaceDeclr) {
                if (!implicitDeclr.containsKey(method.getName()))
                    tempMethodInfo.modifiers.add(Symbol.Abstract);

                // Interface methods are implicitly public
                if (!tempMethodInfo.modifiers.contains(Symbol.Public))
                    tempMethodInfo.modifiers.add(Symbol.Public);
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
                checkReplace(implicitDeclrMethod, tempMethodInfo);
            }

            methodSignature.put(tempMethodInfo.getSignatureStr(), tempMethodInfo);
        }
        if (!typeDeclr.getSimpleName().equals("Object")) {
            if (methodSignature.containsKey("getClass")) {
                throw new NamingResolveException("Fuck you Leatherman");
            }
        }
    }

    private void replaceMapParent(HashMap<String, MethodInfo> map, MethodInfo info) throws NamingResolveException {
        String sig = info.signatureStr;

        if (!map.containsKey(sig)) {
            map.put(sig, info);
            return;
        }

        MethodInfo replaced = map.get(sig);
        if (replaced.returnType.equals(info.returnType)) {

            if (replaced.modifiers.contains(Symbol.Public) && replaced.modifiers.contains(Symbol.Abstract)
                    && info.modifiers.contains(Symbol.Protected) ||
                    replaced.modifiers.contains(Symbol.Protected) && info.modifiers.contains(Symbol.Abstract)
                    && info.modifiers.contains(Symbol.Public))  {
                throw new NamingResolveException("Cannot replace a public method with protected method: "
                        + replaced.signatureStr);
            }

            if (!info.modifiers.contains(Symbol.Abstract)) {
                map.put(sig, info);
            }
        } else {
            throw new NamingResolveException("Unmatched type when replacing method: " + info.signatureStr);
        }
    }

    private void replaceMapLocal(HashMap<String, MethodInfo> map, MethodInfo info) throws NamingResolveException {
        String sig = info.signatureStr;
        if (!map.containsKey(sig)) {
            map.put(sig, info);
            return;
        }

        MethodInfo replaced = map.get(sig);
        if (replaced.returnType.equals(info.returnType)) {
            checkReplace(replaced, info);
            map.put(sig, info);
        } else {
            throw new NamingResolveException("Unmatched type when replacing method: " + info.signatureStr);
        }
    }

    HashMap<String, MethodInfo> getFullMethodSignature() throws NamingResolveException {
        if (!implicitDeclr.isEmpty()) { // empty interface with only implicit declared methods
            methodSignature.putAll(implicitDeclr);
            if (methodSignature.size() == implicitDeclr.size()) {
                methodContainComplete = true;
            }
        }

        if (methodContainComplete) {
            return fullMethodSignature;
        }

        if (extendName.equals(javaLangObjectName)) {
            superSet.add(javaLangObjectName);
        }

        if (!methodContainComplete) {
            // inheritance
            for (ArrayList<String> parentName : superSet) {
                ClassEnv parentEnv = globalEnv.getClassEnv(parentName);

                for (MethodInfo info: parentEnv.getFullMethodSignature().values()) {
                    if (parentEnv.typeDeclr instanceof InterfaceDeclr && info.signatureStr.equals("getClass")) {
                        throw new NamingResolveException("FUCK YOU LEATHERMAN");
                    }
                    replaceMapParent(fullMethodSignature, info);
                }
            }

            // replace
            for (MethodInfo localMethods:methodSignature.values()) {
                replaceMapLocal(fullMethodSignature, localMethods);
            }

            if (typeDeclr instanceof ClassDeclr && !typeDeclr.getModifiers().contains(Symbol.Abstract)) {
                for (MethodInfo info: fullMethodSignature.values()) {
                    if (info.modifiers.contains(Symbol.Abstract)) {

                        throw new NamingResolveException("Abstract methods " + info.signatureStr +
                                " not implemented in " + typeDeclr.getSimpleName());
                    }
                }
            }
        }

        methodContainComplete = true;
        return fullMethodSignature;
    }

    private void resolveConstructorNames() throws NamingResolveException {
        if (typeDeclr instanceof InterfaceDeclr) {
            return;
        }
        TypeInfo ctorType = new TypeInfo(typeDeclr.getCanonicalName());
        for (ConstructorDeclr ctor : ((ClassDeclr) typeDeclr).getConstructor()) {
            ArrayList<FieldsVarInfo> paramList = new ArrayList<>();
            for (Pair<Type, String> param : ctor.getFormalParamList()) {
                paramList.add(typeResolve(param.getValue(), param.getKey()));
            }
            MethodInfo tempCtorInfo =
                    new MethodInfo(ctor, paramList);
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
                parentClassEnv = globalEnv.getClassEnv(typeResolve(extend));

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

                extendName = typeResolve(extend);
            } else {
                if (!typeDeclr.getCanonicalName().equals(javaLangObjectName)) {
                    extendName = new ArrayList<>(javaLangObjectName);
                }
            }
        }

        ArrayList<ArrayList<String>> interfaces = typeDeclr.getParentInterfaces();
        for (ArrayList<String> pInterface : interfaces) {
            ClassEnv parentInterfaceEnv = globalEnv.getClassEnv(typeResolve(pInterface));

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
    }

    HashSet<ArrayList<String>> getFullSuperSet(TreeSet<ArrayList<String>> set) throws NamingResolveException {

        if (typeDeclr instanceof ClassDeclr && ((ClassDeclr) typeDeclr).getParentClass().size() == 0) {
            fullSuperSet.add(javaLangObjectName);
            fullSuperSetComplete = true;
        }

        if (extendName.equals(typeDeclr.getCanonicalName())) {
            throw new NamingResolveException("Cyclic hierarchy structure detected.");
        }

        if (set.contain(typeDeclr.getCanonicalName())) {
            throw new NamingResolveException("Cyclic hierarchy structure detected.");
        }

        if (!fullSuperSetComplete) {
            fullSuperSet.addAll(superSet);
            for (ArrayList<String> className : superSet) {
                ClassEnv classEnv = globalEnv.getClassEnv(className);

                TreeSet<ArrayList<String>> nextSet = set.newChild();
                nextSet.addItem(typeDeclr.getCanonicalName());

                HashSet<ArrayList<String>> pSuper = classEnv.getFullSuperSet(nextSet);

                fullSuperSet.addAll(pSuper);
                if (fullSuperSet.contains(typeDeclr.getCanonicalName())) {
                    throw new NamingResolveException("Cyclic hierarchy structure detected.");
                }
            }
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

    public void resolveFieldsAndLocalVar() throws NamingResolveException {
        for (LocalEnv localEnv:localEnvs) {
            localEnv.resolveLocalVariableAndAccess();
        }
    }

    @Override
    public ArrayList<String> typeResolve(ArrayList<String> longTypeName) throws NamingResolveException {
        if (TypeInfo.isPrimitive(longTypeName)) {
            return longTypeName;
        }
        // qualified Name
        if (longTypeName.size() > 1) {
            String type_prefix = longTypeName.get(0);

            if (resolvedTypes.containsKey(type_prefix)) {
                throw new NamingResolveException("Prefix of a qualified name used for type: " + type_prefix);
            }

            if (!globalEnv.findPackageName(longTypeName, false)) {
                throw new NamingResolveException("Type Not Found: " + String.join(".", longTypeName));
            } else {
                return longTypeName;
            }
        } else {
            String typeName = longTypeName.get(0);
            ArrayList<String> resolvedName = resolvedTypes.getOrDefault(typeName, null);

            if (resolvedName == null) {

                ArrayList<ArrayList<String>> onDemandCandidates = onDemandImportTypes.getOrDefault(typeName, new ArrayList<>());
                if (onDemandCandidates.size() > 1) {
                    throw new NamingResolveException("On Demand import clashing");
                } else if (onDemandCandidates.size() == 0) {
                    throw new NamingResolveException("Type Not Found: no import found on " + typeName);
                } else {
                    resolvedName = onDemandCandidates.get(0);
                }
                resolvedTypes.put(typeName, resolvedName);
            }
            return resolvedName;
        }
    }

    /**
     * This should be named as something like fieldTypeResolve
     * */
    @Override
    public FieldsVarInfo typeResolve(String name, Type type) throws NamingResolveException {
        TypeInfo fieldType = typeResolve(type);
        return new FieldsVarInfo(name, fieldType);
    }

    @Override
    public TypeInfo typeResolve(Type type) throws NamingResolveException {
        TypeInfo typeInfo = new TypeInfo(type);
        // Resolve the type fullName if it is not primitive
        if (!typeInfo.isPrimitive) {
            typeInfo.rewriteFullName(typeResolve(typeInfo.fullName));
        }
        return typeInfo;
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
        return containedFields.keySet().contains(simpleName);
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
    }

    public HashSet<ArrayList<String>> getSuperSet() {
        return superSet;
    }

    String printType() {
        if (typeDeclr instanceof ClassDeclr) return "Class ";
        else return "Interface ";
    }

    public void printInfo(boolean includeStdLib) {
        if (!includeStdLib && typeDeclr.getCanonicalName().contains("java")) return;
        System.out.print(printType());
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
