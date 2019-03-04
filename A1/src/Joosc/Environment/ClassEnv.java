package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.ClassMember.FieldDeclr;
import Joosc.ASTModel.Program;
import Joosc.Exceptions.NamingResolveException;

import java.util.*;

import static Joosc.ASTBuilding.Constants.Symbol.ClassOrInterfaceType;

public class ClassEnv implements Env {
    TypeDeclr typeDeclr;
    GlobalEnv parent;
    Program program;
    protected HashMap<String, String> fields = new HashMap<>(); // type, name
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
    }


    // return true if there is a duplicated field name
    private void duplicatedFieldName() throws NamingResolveException {
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<FieldDeclr> fieldDeclrs = ((ClassDeclr) typeDeclr).getFields();
            for (FieldDeclr fieldDeclr : fieldDeclrs) {
                if (!fields.containsValue(fieldDeclr.getName())) {
                    fields.put(fieldDeclr.getType().toString(), fieldDeclr.getName());
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

    private boolean searchPackageLevel(ArrayList<String> packageName, String simpleName) {
        ArrayList<ClassEnv> packageLevel = parent.getPackageLevelClasses(packageName);
        for (ClassEnv classEnv : packageLevel) { // check other classes under same package
            if (classEnv.typeDeclr.getSimpleName().equals(simpleName)) {
                return true;
            }
        }
        return false;
    }

    private void checkField(FieldDeclr fieldDeclr) throws NamingResolveException {
        if (fieldDeclr.getType().getKind().equals(ClassOrInterfaceType)) {
            ArrayList<String> className = fieldDeclr.getType().getNames();
            if (className.size() == 1) {
                // check in enclosing class/interface
                if (className.get(0).equals(typeDeclr.getSimpleName())) {
                    System.out.println("found 1");

                    return;
                }

                // check in single type import
                for (ArrayList<String> singleImport : singleTypeImports) {
                    if (singleImport.get(singleImport.size() - 1).equals(className.get(0))) {
                        System.out.println("found 3");
                        return;
                    }
                }
                // search classes under same package
                boolean found = searchPackageLevel(packageDeclr, className.get(0));
                if (found) {
                    System.out.println("found 4");
                    return;
                }

                // search in import on demand packages
                found = onDemandTypeImports.stream().map(x -> searchPackageLevel(x, className.get(0)))
                        .reduce(false, (x, y) -> x || y);
                if (found) {
                    System.out.println("found 5");
                    return;
                } else
                    throw new NamingResolveException(String.format("cannot resolve type %s to any class or interface",
                            className.get(0)));
            } else {
                if (parent.classEnvs.stream().map(s -> {
                    ArrayList<String> temp = s.typeDeclr.getCanonicalName();
                    return temp.equals(className);
                }).reduce(false, (x, y) -> x || y)) {
                    System.out.println("match qualified name");
                    return;
                } else {
                    throw new NamingResolveException(String.format("cannot resolve type %s to any class or interface",
                            String.join(".", className)));
                }

            }
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

        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<FieldDeclr> fieldDeclrs = ((ClassDeclr) typeDeclr).getFields();
            for (FieldDeclr fieldDeclr : fieldDeclrs) {
                checkField(fieldDeclr);
            }
        }

        for (LocalEnv localEnv:localEnvs) {
            localEnv.resolveName();
        }
    }
}
