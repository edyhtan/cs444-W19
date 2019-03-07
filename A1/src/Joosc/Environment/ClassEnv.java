package Joosc.Environment;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.InterfaceDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.ClassMember.ConstructorDeclr;
import Joosc.ASTModel.ClassMember.FieldDeclr;
import Joosc.ASTModel.ClassMember.MethodDeclr;
import Joosc.ASTModel.Program;
import Joosc.ASTModel.Type;
import Joosc.Exceptions.NamingResolveException;
import Joosc.util.Pair;

import java.util.*;
import java.util.stream.Collectors;

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
    HashMap<String, MethodInfo> constructorSignature = new HashMap<>();

    // Hierarchy
    HashSet<ArrayList<String>> superSet = new HashSet<>();

    ArrayList<LocalEnv> localEnvs = new ArrayList<>();

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
        for (ArrayList<String> sImport:singleTypeImports) {
            String simpleName = sImport.get(sImport.size()-1);
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

        for (ArrayList<String> dImport: importOnDemand) {
            if (!parent.findPackageName(dImport, true)) {
                throw new NamingResolveException("Import package name not found :" + String.join(".", dImport) + ".*");
            }

            GlobalEnv.PackageNames layer = parent.getPackageLayer(dImport);
            for (String typeName:layer.types) {
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
            layer = parent.defaultPacakge;
        } else {
            layer = parent.getPackageLayer(packageName);
        }

        for (String typeName:layer.types) {
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



    private void resolveMethodNames() throws NamingResolveException {
        for (MethodDeclr method : typeDeclr.getMethods()) {
//                You guys don't like that hacky Function with throwing, hence have to loop
//                paramList = method.getFormalParamList().stream()
//                        .map(param -> typeResolve(param.getValue(), param.getKey()));
            ArrayList<FieldsVarInfo> paramList = new ArrayList<>();
            for (Pair<Type, String> param : method.getFormalParamList()) {
                paramList.add(typeResolve(param.getValue(), param.getKey()));
            }
            MethodInfo tempMethodInfo =
                    new MethodInfo(method, typeResolve(method.getName(), method.getType()), paramList);
            if (methodSignature.containsKey(tempMethodInfo.getSignatureStr())) {
                throw new NamingResolveException("Duplicate method with same signature: " + tempMethodInfo.getSignatureStr());
            } else {
                methodSignature.put(tempMethodInfo.getSignatureStr(), tempMethodInfo);
            }
        }
    }

    private void resolveConstructorNames() throws NamingResolveException {
        if (typeDeclr instanceof InterfaceDeclr) {
            return;
        }
        FieldsVarInfo ctorType = new FieldsVarInfo("", typeDeclr.getCanonicalName(), false, false);
        for (ConstructorDeclr ctor : ((ClassDeclr)typeDeclr).getConstructor()) {
            ArrayList<FieldsVarInfo> paramList = new ArrayList<>();
            for (Pair<Type, String> param : ctor.getFormalParamList()) {
                paramList.add(typeResolve(param.getValue(), param.getKey()));
            }
            MethodInfo tempCtorInfo =
                    new MethodInfo(ctor, ctorType, paramList);
            if (constructorSignature.containsKey(tempCtorInfo.getSignatureStr())) {
                throw new NamingResolveException("Duplicate constructor with same signature");
            } else {
                constructorSignature.put(tempCtorInfo.getSignatureStr(), tempCtorInfo);
            }
        }
    }

    private void resolveHierarchy() throws NamingResolveException {
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<String> extend = ((ClassDeclr)typeDeclr).getParentClass();
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
                    throw new NamingResolveException("Class must not extend an interface. ");
                }

                // Cannot extend final
                if (parentClassEnv.typeDeclr.getModifiers().contains(Symbol.Final)) {
                    throw new NamingResolveException("A class must not extend a final class. ");
                }


            }

            ArrayList<ArrayList<String>> interfaces = ((ClassDeclr) typeDeclr).getInterfaces();
            for (ArrayList<String> parent:interfaces) {
                superSet.add(typeResolve(parent));
            }
        }
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
        boolean isArray = type.getArrayKind() != null;
        // Primitive
        if (type.getKind() != Symbol.ClassOrInterfaceType ||
                (isArray && type.getArrayKind() != Symbol.ClassOrInterfaceType)) {
            return new FieldsVarInfo(name, new ArrayList<>(Arrays.asList(type.getKind().getSymbolString())), true, isArray);
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
        resolveMethodNames();
        resolveConstructorNames();
        resolveHierarchy();

        for (LocalEnv localEnv:localEnvs) {
            localEnv.resolveLocalVariableAndAccess();
        }
    }

    public HashSet<ArrayList<String>> getSuperSet() {
        return superSet;
    }
}
