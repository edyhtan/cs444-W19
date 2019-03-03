package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.Program;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;
import java.util.HashSet;

public class ClassEnv implements Env {
    TypeDeclr typeDeclr;
    ProgramEnv parent;
    Program program;

    public ClassEnv(Program program, ProgramEnv parent) {
        typeDeclr = program.getTypeDeclr();
        typeDeclr.addEnv(this);
        this.parent = parent;
        this.program = program;
    }

    public void check() throws NamingResolveException {
        ArrayList<ProgramEnv.PackageNames> packages = parent.packageNames;
        ArrayList<String> canonicalName = typeDeclr.getCanonicalName();
        String simpleName = typeDeclr.getSimpleName();
        ArrayList<ArrayList<String>> singleTypeImports = program.getSingleTypeImport();
        ArrayList<ArrayList<String>> onDemandTypeImports = program.getOnDemandTypeImport();
        ArrayList<String> parentClass = typeDeclr.getParentClass();
        ArrayList<ArrayList<String>> extendsInterface = typeDeclr.getExtendsInterface();

        HashSet<String> checkSet = new HashSet<>();

        // clash with class/interface declr
        for (ArrayList<String> singleImport : singleTypeImports) {
            if(singleImport.equals(canonicalName)) throw new NamingResolveException();
        }

        // no two imports clash
        for (ArrayList<String> singleImport : singleTypeImports) {
            String temp = String.join(". ", singleImport);
            if (checkSet.contains(temp)) throw new NamingResolveException();
            else checkSet.add(temp);
        }

        // check import-on-demand with package structure
        for (ArrayList<String> onDemandImport : onDemandTypeImports) {
            for (ProgramEnv.PackageNames pn : packages) {
                if (!matchPackage(pn, onDemandImport)) throw new NamingResolveException();
            }
        }

        

    }

    ProgramEnv.PackageNames find(String target, ProgramEnv.PackageNames packageNode) {
        if (packageNode.nameEquals(target)) return packageNode;
        else {
            if (!packageNode.subPackage.isEmpty()) {
                for (ProgramEnv.PackageNames sub : packageNode.subPackage) {
                    if (sub.nameEquals(target)) return sub;
                }
            }
            return null;
        }
    }

    boolean matchPackage(ProgramEnv.PackageNames packageNames, ArrayList<String> targets) {
        int i = 0;
        ProgramEnv.PackageNames result = find(targets.get(i), packageNames);
        while (i < targets.size()) {
            if (result == null) return false;
            else {
                i++;
                result = find(targets.get(i), result);
            }
        }

        return true;
    }


    @Override
    public void nameCheck() throws NamingResolveException {

    }
}
