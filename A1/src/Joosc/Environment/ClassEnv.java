package Joosc.Environment;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.InterfaceDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.*;
import Joosc.ASTModel.Program;
import Joosc.ASTModel.Type;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;
import Joosc.util.Pair;
import Joosc.util.TreeSet;

import java.util.*;

public class ClassEnv implements Env {
    TypeDeclr typeDeclr;
    GlobalEnv globalEnv;
    Program program;
    HashMap<String, FieldsVarInfo> fields = new HashMap<>();
    ArrayList<String> packageDeclr;
    JoosType joosType;

    HashMap<String, JoosType> resolvedTypes = new HashMap<>();

    // will only resolve when we actually use it...
    HashMap<String, ArrayList<JoosType>> onDemandImportTypes = new HashMap<>();

    // Method MethodInfo
    HashMap<String, MethodInfo> methodSignature = new HashMap<>();
    HashMap<String, MethodInfo> fullMethodSignature = new HashMap<>();
    HashMap<String, MethodInfo> implicitDeclr = new HashMap<>();
    private boolean methodContainComplete = false;

    HashMap<String, MethodInfo> constructorSignature = new HashMap<>();

    // Hierarchy
    HashSet<JoosType> superSet = new HashSet<>();
    HashSet<JoosType> fullSuperSet = new HashSet<>();
    private boolean fullSuperSetComplete = false;

    ArrayList<LocalEnv> localEnvs = new ArrayList<>();
    JoosType extendName;
    static ArrayList<String> javaLangObjectName = new ArrayList<>(Arrays.asList("java", "lang", "Object"));

    // variable contain
    private boolean variableContainComplete = false;
    protected HashMap<String, FieldsVarInfo> containedFields = new HashMap();

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
        HashMap<String, JoosType> singleImportedClasses = new HashMap<>();
        importOnDemand.add(new ArrayList<>(Arrays.asList("java", "lang")));


        // Enclosing Class
        joosType = JoosType.getJoosType(typeDeclr.getCanonicalName());
        resolvedTypes.put(typeDeclr.getSimpleName(), joosType);


        // Single Type import
        for (ArrayList<String> sImport : singleTypeImports) {
            String simpleName = sImport.get(sImport.size() - 1);
            // clashes with type def
            if (!sImport.equals(typeDeclr.getCanonicalName()) && simpleName.equals(typeDeclr.getSimpleName())) {
                throw new NamingResolveException("type name " + typeDeclr.getSimpleName() + " clashes with import");
            }

            // no two simple name
            if (singleImportedClasses.containsKey(simpleName) &&
                    !JoosType.getJoosType(sImport).equals(singleImportedClasses.get(simpleName))) {
                throw new NamingResolveException("duplicated imported type " + simpleName);
            }

            // find import in the available packages
            if (!globalEnv.findPackageName(sImport, false)) {
                throw new NamingResolveException("Import name not found :" + String.join(".", sImport));
            }
            singleImportedClasses.put(simpleName, JoosType.getJoosType(sImport));
        }

        resolvedTypes.putAll(singleImportedClasses);

        for (ArrayList<String> dImport : importOnDemand) {
            if (!globalEnv.findPackageName(dImport, true)) {
                throw new NamingResolveException("Import package name not found :" + String.join(".", dImport) + ".*");
            }

            GlobalEnv.PackageNames layer = globalEnv.getPackageLayer(dImport);
            for (String typeName : layer.types.keySet()) {
                ArrayList<String> qualifiedName = new ArrayList<>(dImport);
                qualifiedName.add(typeName);
                ArrayList<JoosType> importedTypeNames = onDemandImportTypes.getOrDefault(typeName, null);
                if (importedTypeNames == null) {
                    importedTypeNames = new ArrayList<>();
                    onDemandImportTypes.put(typeName, importedTypeNames);
                }
                if (!importedTypeNames.contains(JoosType.getJoosType(qualifiedName))) {
                    importedTypeNames.add(JoosType.getJoosType(qualifiedName));
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

        for (String typeName : layer.types.keySet()) {
            ArrayList<String> qualifiedName = new ArrayList<>(packageName);
            qualifiedName.add(typeName);
            resolvedTypes.put(typeName, JoosType.getJoosType(qualifiedName));
        }
    }

    private void resolveFields() throws NamingResolveException, TypeCheckException {
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<FieldDeclr> fieldDeclrs = ((ClassDeclr) typeDeclr).getFields();
            for (FieldDeclr fieldDeclr : fieldDeclrs) {
                String fieldName = fieldDeclr.getName();
                FieldsVarInfo fieldsVarInfo = typeResolve(fieldName, fieldDeclr.getType(), fieldDeclr.getModifiers());
                fieldDeclr.addJoosType(fieldsVarInfo.getTypeInfo().getJoosType());
                fieldDeclr.addEnv(this);
                fieldDeclr.checkExpression(this);
                fieldDeclr.checkType();

                if (!fields.containsKey(fieldName)) {
                    fields.put(fieldName, fieldsVarInfo);
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
                paramList.add(typeResolve(param.getValue(), param.getKey(), new ArrayList<>()));
            }

            MethodInfo tempMethodInfo = new MethodInfo(new MethodDeclr(method), typeResolve(method.getType()), paramList);
            tempMethodInfo.modifiers.add(Symbol.Abstract);
            implicitDeclr.put(tempMethodInfo.getSignatureStr(), tempMethodInfo);
        }
    }

    private void checkReplace(MethodInfo parentMethodInfo, MethodInfo declaredMethod) throws NamingResolveException {
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
            paramList.add(typeResolve(param.getValue(), param.getKey(), new ArrayList<>()));
        }
        return new MethodInfo(method, typeResolve(method.getType()), paramList);
    }

    public void variableContain() {
        if (variableContainComplete) {
            return ;
        }

        if (typeDeclr instanceof ClassDeclr) {

            if (extendName != null && extendName.getTypeName().size() > 0) {
                ClassEnv parentClassEnv = globalEnv.getClassEnv(extendName.getTypeName());
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

    @Override
    public HashMap<String, MethodInfo> getAllMethodSignature() {
        return fullMethodSignature;
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

        if (extendName != null && extendName.getTypeName().equals(javaLangObjectName)) {
            superSet.add(JoosType.getJoosType(javaLangObjectName));
        }

        if (!methodContainComplete) {
            // inheritance
            for (JoosType parentName : superSet) {
                ClassEnv parentEnv = globalEnv.getClassEnv(parentName.getTypeName());

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
        //TypeInfo ctorType = new TypeInfo(false, JoosType.getJoosType(typeDeclr.getCanonicalName()));
        for (ConstructorDeclr ctor : ((ClassDeclr) typeDeclr).getConstructor()) {
            ArrayList<FieldsVarInfo> paramList = new ArrayList<>();
            for (Pair<Type, String> param : ctor.getFormalParamList()) {
                paramList.add(typeResolve(param.getValue(), param.getKey(), new ArrayList<>()));
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
                JoosType extendType = typeResolve(extend);
                superSet.add(extendType);
                parentClassEnv = globalEnv.getClassEnv(typeResolve(extend).getTypeName());

                // Null check
                if (parentClassEnv == null) {
                    throw new NamingResolveException("Unexpected behaviour. ");
                }

                // Cannot extend interface
                if (parentClassEnv.typeDeclr instanceof InterfaceDeclr) {
                    throw new NamingResolveException("Class" + String.join(".", extendType.getTypeName())
                            + " must not extend an interface. ");
                }

                // Cannot extend final
                if (parentClassEnv.typeDeclr.getModifiers().contains(Symbol.Final)) {
                    throw new NamingResolveException("Class " + String.join(".", extendType.getTypeName())
                            + " must not extend a final class. ");
                }

                extendName = typeResolve(extend);
            } else {
                if (!typeDeclr.getCanonicalName().equals(javaLangObjectName)) {
                    extendName = JoosType.getJoosType(javaLangObjectName);
                }
            }
        }

        ArrayList<ArrayList<String>> interfaces = typeDeclr.getParentInterfaces();
        for (ArrayList<String> pInterface : interfaces) {
            JoosType interfaceType = typeResolve(pInterface);
            ClassEnv parentInterfaceEnv = globalEnv.getClassEnv(interfaceType.getTypeName());

            // Cannot implement class
            if (parentInterfaceEnv.typeDeclr instanceof ClassDeclr) {
                throw new NamingResolveException("Class " + String.join(".", interfaceType.getTypeName())
                        + " must not implement a class. ");
            }

            // Duplicate interfaces
            if (superSet.contains(typeResolve(pInterface))) {
                throw new NamingResolveException("Interface " + String.join(".", interfaceType.getTypeName())
                        + " is already in implements clause. ");
            }
            superSet.add(typeResolve(pInterface));
        }
    }

    HashSet<JoosType> getFullSuperSet(TreeSet<ArrayList<String>> set) throws NamingResolveException {

        if (typeDeclr instanceof ClassDeclr && ((ClassDeclr) typeDeclr).getParentClass().size() == 0) {
            fullSuperSet.add(JoosType.getJoosType(javaLangObjectName));
            fullSuperSetComplete = true;
        }

        if (extendName != null && extendName.getTypeName().equals(typeDeclr.getCanonicalName())) {
            throw new NamingResolveException("Cyclic hierarchy structure detected.");
        }

        if (set.contain(typeDeclr.getCanonicalName())) {
            throw new NamingResolveException("Cyclic hierarchy structure detected.");
        }

        if (!fullSuperSetComplete) {
            fullSuperSet.addAll(superSet);
            for (JoosType className : superSet) {
                ClassEnv classEnv = globalEnv.getClassEnv(className.getTypeName());

                TreeSet<ArrayList<String>> nextSet = set.newChild();
                nextSet.addItem(typeDeclr.getCanonicalName());

                HashSet<JoosType> pSuper = classEnv.getFullSuperSet(nextSet);

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

    public void resolveFieldsAndLocalVar() throws NamingResolveException, TypeCheckException {

        for (LocalEnv localEnv:localEnvs) {
            localEnv.resolveLocalVariableAndAccess();
        }
    }

    public boolean isStaticField(String fieldName) {
        return fields.get(fieldName).modifiers.contains(Symbol.Static);
    }

    @Override
    public JoosType typeResolve(ArrayList<String> longTypeName) throws NamingResolveException {
        if (JoosType.isPrimitive(longTypeName)) {
            return JoosType.getJoosType(longTypeName);
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
                return JoosType.getJoosType(longTypeName);
            }
        } else {
            String typeName = longTypeName.get(0);
            JoosType resolvedName = resolvedTypes.getOrDefault(typeName, null);

            if (resolvedName == null) {

                ArrayList<JoosType> onDemandCandidates = onDemandImportTypes.getOrDefault(typeName, new ArrayList<>());
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
    public FieldsVarInfo typeResolve(String name, Type type, ArrayList<Symbol> modifiers) throws NamingResolveException {
        TypeInfo fieldType = typeResolve(type);
        return new FieldsVarInfo(name, fieldType, modifiers);
    }

    @Override
    public TypeInfo typeResolve(Type type) throws NamingResolveException {
        boolean isArray = type.getKind() == Symbol.ArrayType;
        TypeInfo typeInfo = new TypeInfo(isArray);

        // fuck this
        if (type.getNames() == null || type.getNames().size() == 0) {
            ArrayList<String> name;
            if (isArray) {
                name = new ArrayList<>(Arrays.asList(type.getArrayKind().getSymbolString()));
            } else {
                name = new ArrayList<>(Arrays.asList(type.getKind().getSymbolString()));
            }
            typeInfo.rewriteJoosType(typeResolve(name));
        } else {
            typeInfo.rewriteJoosType(typeResolve(type.getNames()));
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
    public void semanticAnalysis() throws NamingResolveException, TypeCheckException {
        resolveImports();
        resolveFields();
        resolveConstructorNames();
        resolveHierarchy();
        resolveClassDeclrMethodNames();
    }

    String printType() {
        if (typeDeclr instanceof ClassDeclr) return "Class ";
        else return "Interface ";
    }

    public TypeDeclr getTypeDeclr() {
        return typeDeclr;
    }

    public void addSuperToJooscType() {
        for (JoosType parent:fullSuperSet) {
            joosType.addParent(parent);
        }
    }


    @Override
    public JoosType findResolvedType(String name) {
        return resolvedTypes.getOrDefault(name, null);
    }

    @Override
    public boolean hasMethodSignature(String f) {
        return fullMethodSignature.keySet().stream().map(x->x.split(",")[0].equals(f)).reduce(false, (a,b) -> a|b);
    }

    @Override
    public JoosType getJoosType() {
        return joosType;
    }

    @Override
    public FieldsVarInfo getFieldInfo(String name){
        return containedFields.getOrDefault(name, null);
    }

    @Override
    public FieldsVarInfo getDeclaredFieldInfo(String name) {
        return fields.getOrDefault(name, null);
    }

    @Override
    public FieldsVarInfo getVarInfo(String name) {
        return null;
    }

    @Override
    public FieldsVarInfo getStaticFieldInfo(String name) {
        if (isFieldDeclared(name) && containedFields.get(name).modifiers.contains(Symbol.Static)) {
            return containedFields.get(name);
        }

        return null;
    }
}
