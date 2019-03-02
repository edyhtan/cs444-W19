package Joosc.Environment;

import Joosc.ASTModel.Program;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;
import java.util.HashSet;

public class ProgramEnv implements Env {
    ArrayList<Program> programs;
    ArrayList<PackageNames> packageNames;

    public ProgramEnv(ArrayList<Program> programs) {
        this.programs = programs;

        // populate existing package names.
        for (Program program: programs) {
            String[] packageLayer = program.getPackageDeclr().split(".");
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
        public String name;
        ArrayList<PackageNames> subPackage = new ArrayList<>();

        PackageNames(String packageName) {
            name = packageName;
        }

        boolean nameEquals(String name) {
            return this.name.equals(name);
        }
    }
}
