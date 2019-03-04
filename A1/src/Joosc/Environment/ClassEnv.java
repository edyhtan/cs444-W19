package Joosc.Environment;

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
    ArrayList<ArrayList<String>> singleTypeImports;
    ArrayList<ArrayList<String>> onDemandTypeImports;
    ArrayList<String> packageDeclr;

    HashMap<String, ArrayList<String>> allImportedClasses = new HashMap<>(); // (Name, Canonical Name)

    ArrayList<LocalEnv> localEnvs = new ArrayList<>();

    public ClassEnv(Program program, GlobalEnv parent) {
        typeDeclr = program.getTypeDeclr();
        typeDeclr.addEnv(this);
        this.parent = parent;
        this.program = program;
        singleTypeImports = program.getSingleTypeImport();
        onDemandTypeImports = program.getOnDemandTypeImport();
        packageDeclr = program.getPackageDeclr();
        if(packageDeclr == null) packageDeclr = new ArrayList<>(Arrays.asList(""));
        constructLocalEnvironment();
    }

    public void resolveImports() throws NamingResolveException {
        ArrayList<String> canonicalName = typeDeclr.getCanonicalName();
        String simpleName = typeDeclr.getSimpleName();

        HashMap<String, ArrayList<String>> singleTypeImport = new HashMap<>();

        for (ArrayList<String> singleImport: singleTypeImports) {
            String className = singleImport.get(singleImport.size()-1);
            // No import clashes with the type name
            if (className.equals(simpleName) && !equalCanonicalName(singleImport)) {
                throw new NamingResolveException(String.format("single type import %s clashes with type %s",
                        String.join(".", singleImport), simpleName));
            }

            // No two import clashes with each other
            if (singleTypeImport.containsKey(className)) {
                throw new NamingResolveException(String.format("single type import %s clashes with another single type import at ", className));
            }

            // find a package:
            GlobalEnv.PackageNames currentPackage = parent.defaultPacakge;
            int i = 0;
            for (String packageLevel: singleImport) {
                if (i == singleImport.size()-1) {
                    if (!currentPackage.types.contains(packageLevel)) {
                        throw new NamingResolveException("Type not found" + String.join(".", singleImport));
                    }
                    continue;
                } else if (!currentPackage.subPackage.containsKey(packageLevel)) {
                    throw new NamingResolveException("package " + packageLevel + " not found in "
                            + String.join(".", singleImport));
                }
                currentPackage = currentPackage.subPackage.getOrDefault(packageLevel, null);
                i++;
            }
            singleTypeImport.put(className, singleImport);
        }
        allImportedClasses.putAll(singleTypeImport);

        // singleType clash with onDemand
        for (ArrayList<String> onDemandImport : onDemandTypeImports) {
            // singleType clash with onDemand
            for (String im : onDemandImport) {
                if (singleTypeImport.containsKey(im))
                    throw new NamingResolveException("single type import clashes with on demand import at " + im);
            }

            // package exist
            GlobalEnv.PackageNames currentPackage = parent.defaultPacakge;
            for (String packageName : onDemandImport) {
                if (!currentPackage.subPackage.containsKey(packageName)) {
                    throw new NamingResolveException("could not find package " + packageName + " in " +
                            String.join(".", onDemandImport));
                }
                currentPackage = currentPackage.subPackage.get(packageName);
            }

            // try including all class in this packages
            for (String className: currentPackage.types) {
                if (allImportedClasses.containsKey(className)) {
                    throw new NamingResolveException("duplicated import name " + className + " in " + onDemandImport);
                }
                ArrayList<String> cname= new ArrayList<>(onDemandImport);
                cname.add(className);
                allImportedClasses.put(className, cname);
            }
        }

        // adding implicit types:
        for (String className: parent.packageNames.get("java").subPackage.get("lang").types) {
            if (!allImportedClasses.containsKey(className)) {
                ArrayList<String> cname = new ArrayList<>();
                cname.add("java");
                cname.add("lang");
                cname.add(className);
                allImportedClasses.put(className, cname);
            }
        }

    }


    // return true if there is a duplicated field name
    private void duplicatedFieldName() throws NamingResolveException {
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<FieldDeclr> fieldDeclrs = ((ClassDeclr) typeDeclr).getFields();
            for (FieldDeclr fieldDeclr : fieldDeclrs) {
                if (!fields.containsValue(fieldDeclr.getName())) {
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
        for (Map.Entry<String, FieldsVarInfo> field:fields.entrySet()) {
            Type type = field.getValue().type;
            // ignore primitive and qualifed type
            if (type.getNames() == null || type.getNames().size() != 1) {
                continue;
            }

            if (!allImportedClasses.containsKey(type.getNames().get(0))) {
                throw new NamingResolveException("Type: " + type.getNames().get(0) + " Not Found");
            }

            field.getValue().setResolvedType(allImportedClasses.get(type.getNames().get(0)));
        }
    }

    private void constructLocalEnvironment() {
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<ClassBodyDeclr> methodDeclrs = ((ClassDeclr) typeDeclr).getClassBodyDeclrNodes();

            for (ClassBodyDeclr classBodyDeclr : methodDeclrs) {
                localEnvs.add(new LocalEnv(classBodyDeclr, this));
            }
        }
    }

    private boolean equalCanonicalName(ArrayList<String> canonicalName) {
        if (canonicalName.size() != typeDeclr.getCanonicalName().size()) {
            return false;
        } else {
            for (int i = 0; i < canonicalName.size() ; i++ ) {
                if (!typeDeclr.getCanonicalName().get(i).equals(canonicalName.get(i))) {
                    return false;
                }
            }
        }
        return true;
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
        duplicatedFieldName();
        resolveImports();
        resolveFieldType();

        for (LocalEnv localEnv:localEnvs) {
            localEnv.resolveName();
        }
    }
}
