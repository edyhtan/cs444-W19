package Joosc.Environment;

import Joosc.ASTBuilding.ASTStructures.FieldDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.ClassMember.FieldDeclr;
import Joosc.ASTModel.Program;
import Joosc.ASTModel.Type;
import Joosc.Exceptions.NamingResolveException;

import java.util.*;

public class ClassEnv implements Env {
    TypeDeclr typeDeclr;
    GlobalEnv parent;
    Program program;
    protected HashMap<String, FieldsVarInfo> fields = new HashMap<>();
    ArrayList<String> packageDeclr;
    HashSet<ArrayList<String>> superSet = new HashSet<>();

    HashMap<String, ArrayList<String>> resolvedTypes = new HashMap<>();

    // will only resolve when we actually use it...
    HashMap<String, ArrayList<ArrayList<String>>> onDemandImportTypes = new HashMap<>();
    HashMap<String, ArrayList<String>> samePackage = new HashMap<>();


    ArrayList<LocalEnv> localEnvs = new ArrayList<>();

    public ClassEnv(Program program, GlobalEnv parent) {
        typeDeclr = program.getTypeDeclr();
        typeDeclr.addEnv(this);
        this.parent = parent;
        this.program = program;
        packageDeclr = program.getPackageDeclr();
        if(packageDeclr == null) packageDeclr = new ArrayList<>(Arrays.asList(""));
        constructLocalEnvironment();
    }

    private void buildSuperSet() {
        if(typeDeclr instanceof ClassDeclr) {

            if(((ClassDeclr) typeDeclr).getParentClass().isEmpty() || ((ClassDeclr) typeDeclr).getParentClass() == null) {
                superSet.add(new ArrayList<>(Arrays.asList("java.lang.Object".split("\\."))));
            } else {
                ((ClassDeclr) typeDeclr).getParentClass().forEach(x -> {
                    // TODO: check x is a class, cannot be final
                    superSet.add(new ArrayList<>(Arrays.asList(x)));
                });
            }
            ((ClassDeclr) typeDeclr).getInterfaces().forEach(x-> {
                // TODO: check x is an interface, no duplicate interfaces(simple&simple, simple&canonical, canonical&canonical)
                superSet.add(x);
            });
        }

    }

    public void resolveImports() throws NamingResolveException {
        ArrayList<ArrayList<String>> singleTypeImports = program.getSingleTypeImport();
        ArrayList<ArrayList<String>> importOnDemand = program.getOnDemandTypeImport();
        HashMap<String, ArrayList<String>> singleImportedClasses = new HashMap<>();
        importOnDemand.add(new ArrayList<>(Arrays.asList("java", "lang")));

        // Enclosing Class
        resolvedTypes.put(typeDeclr.getSimpleName(), typeDeclr.getCanonicalName());

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
                importedTypeNames.add(qualifiedName);
            }
        }

        ArrayList<String> packgeName = program.getPackageDeclr();
        GlobalEnv.PackageNames layer;
        if (packgeName.size() == 0) {
            layer = parent.defaultPacakge;
        } else {
            layer = parent.getPackageLayer(packgeName);
        }

        for (String typeName:layer.types) {
            ArrayList<String> qualifiedName = new ArrayList<>(packgeName);
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

    public FieldsVarInfo typeResolve(String name, Type type) throws NamingResolveException {
        boolean isArray = type.getArrayKind() != null;

        // Primitive
        if (type.getKind() != Symbol.ClassOrInterfaceType ||
                (isArray && type.getArrayKind() != Symbol.ClassOrInterfaceType)) {
            return new FieldsVarInfo(name, new ArrayList<>(Arrays.asList(type.getKind().getSymbolString())), true, isArray);
        }

        ArrayList<String> longTypeName = type.getNames();

        // qualified Name
        if (longTypeName.size() > 1) {
            if (parent.findPackageName(longTypeName, false)) {
                throw new NamingResolveException("Type Not Found: " + String.join(".", longTypeName));
            } else {
                return new FieldsVarInfo(name, longTypeName, false, isArray);
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
            return new FieldsVarInfo(name, resolvedName, false, isArray);
        }
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
    public boolean isLocalVariableDeclared(String simpleName) {
        return false;
    }

    @Override
    public void resolveName() throws NamingResolveException {
        resolveImports();
        resolveFields();

        for (LocalEnv localEnv:localEnvs) {
            localEnv.resolveLocalVariableAndAccess();
        }
    }

    public HashSet<ArrayList<String>> getSuperSet() {
        return superSet;
    }
}
