package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.Program;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class GlobalEnv implements Env {
    ArrayList<Program> programs;
    ArrayList<ClassEnv> classEnvs;
    PackageNames defaultPacakge = new PackageNames("");
    HashMap<String, PackageNames> packageNames = defaultPacakge.subPackage;

    public GlobalEnv(ArrayList<Program> programs) {
        this.programs = programs;

        // populate existing package names.
        for (Program program : programs) {
            ArrayList<String> packageLayer = program.getPackageDeclr();

            if (packageLayer == null) {
                defaultPacakge.types.add(program.getTypeDeclr().getSimpleName());
                continue;
            }

            PackageNames currentPackageLevel = defaultPacakge;
            for (String packageName : packageLayer) {
                HashMap<String, PackageNames> subPackage = currentPackageLevel.subPackage;
                if (!subPackage.containsKey(packageName)) {
                    subPackage.put(packageName, new PackageNames(packageName));
                }
                currentPackageLevel = subPackage.get(packageName);
            }

            currentPackageLevel.types.add(program.getTypeDeclr().getSimpleName());
        }
        defaultPacakge.print(0);

        // sub environment
        classEnvs = new ArrayList<>();
        programs.forEach(x -> classEnvs.add(new ClassEnv(x, this)));
    }

    private void nameConflict() throws NamingResolveException {
        HashSet<String> canonicalNames = new HashSet<>();
        if (!programs.stream().map(
                x -> {
                    if (canonicalNames.contains(x.getClassCanonicalNameStr())) {
                        return false;
                    } else {
                        canonicalNames.add(x.getClassCanonicalNameStr());
                        return true;
                    }
                }
        ).reduce(true, (x, y) -> x & y)) {
            throw new NamingResolveException("Duplicated Type");
        }
    }

    @Override
    public TypeDeclr getCurrentClass() {
        return null;
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
        nameConflict();
        for (ClassEnv classEnv : classEnvs) {
            classEnv.resolveName();
        }
    }


    public ArrayList<ClassEnv> getPackageLevelClasses(ArrayList<String> packageName) {
        ArrayList<ClassEnv> classes = new ArrayList<>();
        for (ClassEnv classEnv : classEnvs) {
            if (classEnv.samePackage(packageName)) classes.add(classEnv);
        }

        return classes;
    }

    public class PackageNames {
        String name;
        HashMap<String, PackageNames> subPackage = new HashMap<>();
        ArrayList<String> types = new ArrayList<>();

        PackageNames(String packageName) {
            name = packageName;
        }

        boolean nameEquals(String name) {
            return this.name.equals(name);
        }

        void print(int level) {
            for (int i = 0; i < level; i++)
                System.err.print("  |");
            System.err.print("--" + name + "\n");
            subPackage.forEach((x, y) -> y.print(level + 1));
            types.forEach( x -> {
                for (int i = 0; i < level + 1; i++)
                    System.err.print("  |");
                System.err.print("==" + x + "\n");
            });
        }
    }
}
