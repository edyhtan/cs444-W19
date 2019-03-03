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


    public void check() throws NamingResolveException {
        HashMap<String, GlobalEnv.PackageNames> packages = parent.packageNames;
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

        // check all import-on-demand matches with package structure
        for (ArrayList<String> onDemandImport : onDemandTypeImports) {
            for (Map.Entry<String, GlobalEnv.PackageNames> packageNamesEntry : packages.entrySet()) {
                if(!matchPackage(packageNamesEntry.getValue(), onDemandImport)) throw new NamingResolveException();
            }
        }

        

    }

    private boolean matchPackage(GlobalEnv.PackageNames packageNames, ArrayList<String> targets) {
        int i = 0;
        while (i < targets.size()) {
            if(packageNames.nameEquals(targets.get(i))) {
                i++;
            } else break;
        }
        return i == targets.size();
    }

    // return true if there is a duplicated
    private boolean duplicatedFieldName() throws NamingResolveException{
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<FieldDeclr> fieldDeclrs = ((ClassDeclr) typeDeclr).getFields();
            for (FieldDeclr fieldDeclr : fieldDeclrs) {
                if (!fields.contains(fieldDeclr.getName())) {
                    fields.add(fieldDeclr.getName());
                } else {
                    throw new NamingResolveException();
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
