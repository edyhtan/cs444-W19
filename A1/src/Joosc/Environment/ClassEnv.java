package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.ClassMember.FieldDeclr;
import Joosc.ASTModel.ClassMember.MethodDeclr;
import Joosc.ASTModel.Program;
import Joosc.ASTModel.Type;
import Joosc.Exceptions.NamingResolveException;

import java.util.*;
import java.util.stream.Collectors;

import static Joosc.ASTBuilding.Constants.Symbol.ClassOrInterfaceType;

public class ClassEnv implements Env {
    TypeDeclr typeDeclr;
    GlobalEnv parent;
    Program program;
    protected HashMap<String, String> fields = new HashMap<>(); // type, name
    ArrayList<ArrayList<String>> singleTypeImports;
    ArrayList<ArrayList<String>> onDemandTypeImports;
    ArrayList<String> packageDeclr;

    ArrayList<LocalEnv> localEnvs = new ArrayList<>();

    public ClassEnv(Program program, GlobalEnv parent) {
        typeDeclr = program.getTypeDeclr();
        typeDeclr.addEnv(this);
        this.parent = parent;
        this.program = program;
        singleTypeImports = program.getSingleTypeImport();
        onDemandTypeImports = program.getOnDemandTypeImport();
        packageDeclr = program.getPackageDeclr();
        constructLocalEnvironment();
    }

    public void resolveImports() throws NamingResolveException {
        ArrayList<String> canonicalName = typeDeclr.getCanonicalName();
        String simpleName = typeDeclr.getSimpleName();

        HashSet<String> singleImportClasses = new HashSet<>(); // stores only class names

        // clash with class/interface declr
        for (ArrayList<String> singleImport : singleTypeImports) {
            HashSet<String> temp = new HashSet<>(singleImport);
            if (temp.contains(simpleName) && !singleImport.equals(canonicalName)) {
                throw new NamingResolveException(String.format("single type import %s clashes with type declr",
                        String.join(".", singleImport)));
            }
        }

        // no two singTypeImports clash
        for (ArrayList<String> singleImport : singleTypeImports) {
            String className = singleImport.get(singleImport.size() - 1);
            if (singleImportClasses.contains(className)) {
                throw new NamingResolveException(
                        String.format("single type import %s clashes with another single type import at ", className));
            }
        }

        // singleType clash with onDemand
        for (ArrayList<String> onDemand : onDemandTypeImports) {
            for (String im : onDemand) {
                if (singleImportClasses.contains(im))
                    throw new NamingResolveException("single type import clashes with on demand import at " + im);
            }
        }

        // check all import-on-demand matches with package structure
        for (ArrayList<String> onDemandImport : onDemandTypeImports) {
            HashMap<String, GlobalEnv.PackageNames> searchPackage = parent.packageNames;
            for (String packageName : onDemandImport) {
                GlobalEnv.PackageNames findPackage = searchPackage.getOrDefault(packageName, null);
                if (findPackage == null) {
                    throw new NamingResolveException("could not find package " +
                            String.join(".", onDemandImport));
                }
                searchPackage = findPackage.subPackage;
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
        if(packageDeclr == null || packageDeclr.isEmpty()) {
            packageDeclr = new ArrayList<>(Arrays.asList(typeDeclr.getSimpleName()));
        }
        if(packageName == null) return false;
        Collections.sort(packageName);
        ArrayList<String> temp = this.packageDeclr;
        Collections.sort(temp);

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
                    return;
                }

                if(GlobalEnv.implictTypesHashSet.contains(className.get(0))) return;
                // check in single type import
                for (ArrayList<String> singleImport : singleTypeImports) {
                    if (singleImport.get(singleImport.size() - 1).equals(className.get(0))) {
                        return;
                    }
                }
                // search classes under same package
                boolean found = searchPackageLevel(packageDeclr, className.get(0));
                // search in import on demand packages
                found = onDemandTypeImports.stream().map(x -> searchPackageLevel(x, className.get(0)))
                        .reduce(found, (x, y) -> x & y);
                if (!found) {
                    throw new NamingResolveException(String.format("cannot resolve type %s to any class or interface",
                            className.get(0)));
                }
            } else {
                // TODO
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

    @Override
    public void resolveName() throws NamingResolveException {
        duplicatedFieldName();
        resolveImports();
        if(typeDeclr instanceof ClassDeclr) {
            ArrayList<FieldDeclr> fieldDeclrs = ((ClassDeclr) typeDeclr).getFields();
            for(FieldDeclr fieldDeclr : fieldDeclrs) {
                checkField(fieldDeclr);
            }
        }
    }
}
