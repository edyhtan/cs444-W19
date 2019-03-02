package Joosc.Environment;

import Joosc.ASTModel.Program;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;
import java.util.HashSet;

public class ProgramEnv implements Env {
    ArrayList<Program> programs;
    ArrayList<ClassEnv> classEnvs;
    ArrayList<PackageNames> packageNames;

    public ProgramEnv(ArrayList<Program> programs) {
        this.programs = programs;
        packageNames = new ArrayList<>();

        // populate existing package names.
        for (Program program: programs) {
            ArrayList<String> packageLayer = program.getPackageDeclr();
            if (packageLayer == null)
                continue;

            ArrayList<PackageNames> currentLayer = packageNames;
            for (String packageName: packageLayer) {
                PackageNames nextLayer = null;
                for (PackageNames existingPackages: packageNames) {
                    if (existingPackages.nameEquals(packageName)) {
                        nextLayer = existingPackages;
                    }
                }
                if (nextLayer == null) {
                    nextLayer = new PackageNames(packageName);
                    currentLayer.add(nextLayer);
                }
                currentLayer = nextLayer.subPackage;
            }
        }
        packageNames.stream().forEach(x->x.print(1));

        // sub environment
        classEnvs = new ArrayList<>();
        programs.stream().forEach( x -> classEnvs.add(new ClassEnv(x, this)));
    }

    private boolean nameConflict() {
        HashSet<String> canonicalNames = new HashSet<>();
        return programs.stream().map(
                x -> {
                    if (canonicalNames.contains(x.getClassCanonicalName())) {
                        return false;
                    } else {
                        canonicalNames.add(x.getClassCanonicalName());
                        return true;
                    }
                }
        ).reduce(true, (x,y) -> x & y);
    }

    @Override
    public void nameCheck() throws NamingResolveException{
        if (!nameConflict()) {
            throw new NamingResolveException();
        }
    }

    public class PackageNames {
        String name;
        ArrayList<PackageNames> subPackage = new ArrayList<>();

        PackageNames(String packageName) {
            name = packageName;
        }

        boolean nameEquals(String name) {
            return this.name.equals(name);
        }

        void print(int level) {
            System.err.print("|");
            for (int i = 0; i < level; i ++)
                System.err.print("--");
            System.err.print(name + "\n");
            subPackage.stream().forEach(x-> x.print(level+1));
        }
    }
}
