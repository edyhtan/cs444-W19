package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.ClassMember.FieldDeclr;
import Joosc.ASTModel.Program;
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
    HashMap<String, ArrayList<String>> onDemandImportTypes = new HashMap<>(); // will only resolve when we actually use it...

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
        GlobalEnv.PackageNames rootPackage = parent.rootPackage;
        HashMap<String, ArrayList<String>> singleImportedClasses = new HashMap<>();
        HashMap<String, ArrayList<String>> onDemandImportedClasses = new HashMap<>();
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
                if (resolvedTypes.containsKey(typeName)) {
                    continue;
                } else {
                    ArrayList<String> qualifiedName = new ArrayList<>(dImport);
                    qualifiedName.add(typeName);
                    onDemandImportTypes.put(typeName, qualifiedName);
                }
            }
        }
    }

    private void duplicatedFieldName() throws NamingResolveException {
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<FieldDeclr> fieldDeclrs = ((ClassDeclr) typeDeclr).getFields();
            for (FieldDeclr fieldDeclr : fieldDeclrs) {
                if (!fields.containsKey(fieldDeclr.getName())) {
                    fields.put(fieldDeclr.getName(),
                            new FieldsVarInfo(fieldDeclr.getName(),
                                    String.join(".", typeDeclr.getCanonicalName()),
                                    fieldDeclr.getType())
                            );
                } else {
                    throw new NamingResolveException("found more than one field with name " + fieldDeclr.getName());
                }
            }
        }
    }

    public boolean samePackage(ArrayList<String> packageName) {
        if (packageName == null || packageDeclr == null) return false;
        ArrayList<String> temp = this.packageDeclr;
        return temp.equals(packageName);
    }

    private void resolveFieldType() throws NamingResolveException {

    }

    private void constructLocalEnvironment() {
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<ClassBodyDeclr> methodDeclrs = ((ClassDeclr) typeDeclr).getClassBodyDeclrNodes();

            for (ClassBodyDeclr classBodyDeclr : methodDeclrs) {
                localEnvs.add(new LocalEnv(classBodyDeclr, this));
            }
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
        //resolveFieldType();
        duplicatedFieldName();

        for (LocalEnv localEnv:localEnvs) {
            localEnv.resolveName();
        }
    }

    public HashSet<ArrayList<String>> getSuperSet() {
        return superSet;
    }
}
