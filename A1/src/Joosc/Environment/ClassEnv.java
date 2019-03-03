package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.FieldDeclr;
import Joosc.ASTModel.Program;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public class ClassEnv implements Env {
    TypeDeclr typeDeclr;
    GlobalEnv parent;
    Program program;
    protected HashSet<String> fields = new HashSet<>();


    public ClassEnv(Program program, GlobalEnv parent) {
        typeDeclr = program.getTypeDeclr();
        typeDeclr.addEnv(this);
        this.parent = parent;
        this.program = program;
    }

    public void resolveImports() throws NamingResolveException {
        HashMap<String, GlobalEnv.PackageNames> packages = parent.packageNames;
        ArrayList<String> canonicalName = typeDeclr.getCanonicalName();
        String simpleName = typeDeclr.getSimpleName();
        ArrayList<ArrayList<String>> singleTypeImports = program.getSingleTypeImport();
        ArrayList<ArrayList<String>> onDemandTypeImports = program.getOnDemandTypeImport();

        // DEBUG:
        System.out.println("Class: " + simpleName);
        System.out.println("SingleTypeImports:");
        singleTypeImports.forEach(x -> {
            System.out.println("\t" + String.join(".", x));
        });
        System.out.println("onDemandTypeImports:");
        onDemandTypeImports.forEach(x -> {
            System.out.println("\t" + String.join(".", x));
        });
        System.out.println("----------------------------");


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
                throw new NamingResolveException(String.format("single type import %s clashes with another single type import at ", className));
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

            System.out.println(String.join(".", onDemandImport));

            for (Map.Entry<String, GlobalEnv.PackageNames> packageNamesEntry : packages.entrySet()) {
                if (!matchPackage(packageNamesEntry.getValue(), onDemandImport))
                    throw new NamingResolveException(String.format("on demand import %s does not match any package structure",
                            String.join(".", onDemandImport)));
            }
        }

    }

    private boolean matchPackage(GlobalEnv.PackageNames packageNames, ArrayList<String> targets) {
        if (packageNames == null) return false;
        int i = 0;
        GlobalEnv.PackageNames cur = packageNames;
        while (i < targets.size()) {
            if (packageNames.subPackage.isEmpty()) break;
            if (i!= targets.size()-1 && cur.nameEquals(targets.get(i)) && cur.subPackage.containsKey(targets.get(i+1))) {
                cur = cur.subPackage.get(targets.get(i+1));
                i++;
            } else break;
        }
        return i == targets.size()-1;
    }

    // return true if there is a duplicated
    private boolean duplicatedFieldName() throws NamingResolveException {
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<FieldDeclr> fieldDeclrs = ((ClassDeclr) typeDeclr).getFields();
            for (FieldDeclr fieldDeclr : fieldDeclrs) {
                if (!fields.contains(fieldDeclr.getName())) {
                    fields.add(fieldDeclr.getName());
                } else {
                    throw new NamingResolveException("found more than one field with name " + fieldDeclr.getName());
                }
            }
        }
        return false;
    }

    @Override
    public void resolveName() throws NamingResolveException {
        duplicatedFieldName();
        resolveImports();
    }
}
