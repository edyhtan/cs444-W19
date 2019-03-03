package Joosc.Environment;

import Joosc.ASTModel.Program;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class GlobalEnv implements Env {
    ArrayList<Program> programs;
    ArrayList<ClassEnv> classEnvs;
    HashMap<String, PackageNames> packageNames;

    public GlobalEnv(ArrayList<Program> programs) {
        this.programs = programs;
        packageNames = new HashMap<>();

        // populate existing package names.
        for (Program program: programs) {
            ArrayList<String> packageLayer = program.getPackageDeclr();
            if (packageLayer == null)
                continue;

           HashMap<String, PackageNames> currentLayer = packageNames;
            for (String packageName: packageLayer) {
                PackageNames nextLayer = currentLayer.getOrDefault(packageName, null);
                if (nextLayer == null) {
                    nextLayer = new PackageNames(packageName);
                    currentLayer.put(packageName, nextLayer);
                }
                currentLayer = nextLayer.subPackage;
            }
        }
        packageNames.forEach((x, y) -> y.print(1));

        // sub environment
        classEnvs = new ArrayList<>();
        programs.forEach( x -> classEnvs.add(new ClassEnv(x, this)));
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
    public void resolveName() throws NamingResolveException {
        for (ClassEnv classEnv:classEnvs) {
            classEnv.resolveName();
        }
    }

    public class PackageNames {
        String name;
        HashMap<String, PackageNames> subPackage = new HashMap<>();

        PackageNames(String packageName) {
            name = packageName;
        }

        boolean nameEquals(String name) {
            return this.name.equals(name);
        }

        void print(int level) {
            System.err.print("|");
            for (int i = 0; i < level; i ++)
                System.err.print("  |");
            System.err.print("--" + name + "\n");
            subPackage.forEach((x, y) -> y.print(level+1));
        }
    }
}
