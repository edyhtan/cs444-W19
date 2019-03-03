package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.FieldDeclr;
import Joosc.ASTModel.Program;
import Joosc.Exceptions.NamingResolveException;

import java.util.*;

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

    @Override
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


        HashSet<String> singleImportSet = new HashSet<>();
        HashSet<String> onDemandImportSet = new HashSet<>();

        // clash with class/interface declr
        for (ArrayList<String> singleImport : singleTypeImports) {
            HashSet<String> temp = new HashSet<>(singleImport);
            if (temp.contains(simpleName) && !singleImport.equals(canonicalName))
                throw new NamingResolveException(String.format("single type import %s clashes with type declr",
                        String.join(".", singleImport)));
        }

        // no two singTypeImports clash
        for (ArrayList<String> singleImport : singleTypeImports) {
            String temp = String.join(". ", singleImport);
            if (singleImportSet.contains(temp))
                throw new NamingResolveException(String.format("single type import %s clashes with another single type import", temp));
            else singleImportSet.add(temp);
        }

        // no two onDemandTypeImports clash
        for(ArrayList<String> onDemandImport : onDemandTypeImports) {
            String temp = new StringBuilder(String.join(".", onDemandImport)).append(".*").toString();
            if(onDemandImportSet.contains(temp))
                throw new NamingResolveException(String.format("single type import %s clashes with another single type import", temp));
            else onDemandImportSet.add(temp);
        }

        // singleType clash with onDemand
        HashSet<String> checkSet = new HashSet<>();
        for (ArrayList<String> singleImport : singleTypeImports) {
            singleImport.forEach((x) -> checkSet.add(x));
        }
        for (ArrayList<String> onDemand : onDemandTypeImports) {
            for (String im : onDemand) {
                // DEBUG
                System.out.println(im);

                if (checkSet.contains(im))
                    throw new NamingResolveException("single type import clashes with on demand import at "+ im);
            }
        }

        // check all import-on-demand matches with package structure
//        if (packages.isEmpty() && !onDemandTypeImports.isEmpty())
//            throw new NamingResolveException("no package structure found");
        for (ArrayList<String> onDemandImport : onDemandTypeImports) {
            for (Map.Entry<String, GlobalEnv.PackageNames> packageNamesEntry : packages.entrySet()) {
                if (!matchPackage(packageNamesEntry.getValue(), onDemandImport))
                    throw new NamingResolveException(String.format("on demand import %s does not match any package structure",
                            String.join(".", onDemandImport)));
            }
        }

    }

    private boolean matchPackage(GlobalEnv.PackageNames packageNames, ArrayList<String> targets) {
        if(packageNames == null) return false;
        int i = 0;
        while (i < targets.size()) {
            if (packageNames.nameEquals(targets.get(i))) {
                i++;
            } else break;
        }
        return i == targets.size();
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
    }
}
