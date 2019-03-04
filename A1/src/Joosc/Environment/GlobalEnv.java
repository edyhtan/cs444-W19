package Joosc.Environment;

import Joosc.ASTModel.Program;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

public class GlobalEnv implements Env {
    enum ImplicitType {
        BOOLEAN("Boolean"),
        CLASS("Class"),
        NUMBER("Number"),
        STRING("String"),
        BYTE("Byte"),
        CLONEABLE("Cloneable"),
        OBJECT("Object"),
        SYSTEM("System"),
        CHARACTER("Character"),
        INTEGER("Integer"),
        SHORT("Short");

        final String name;

        ImplicitType(String name) {
            this.name = name;
        }

        public String toString(){
            return name;
        }
    }

    static HashSet<String> implictTypesHashSet = new HashSet<>();

    ArrayList<Program> programs;
    ArrayList<ClassEnv> classEnvs;
    HashMap<String, PackageNames> packageNames;




    public GlobalEnv(ArrayList<Program> programs) {
        this.programs = programs;
        packageNames = addStdLib();

        // populate existing package names.
        for (Program program : programs) {
            ArrayList<String> packageLayer = program.getPackageDeclr();
            if (packageLayer == null)
                continue;

            HashMap<String, PackageNames> currentLayer = packageNames;
            for (String packageName : packageLayer) {
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
        programs.forEach(x -> classEnvs.add(new ClassEnv(x, this)));
        for(ImplicitType type : ImplicitType.values()) implictTypesHashSet.add(type.toString());
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
    public void resolveName() throws NamingResolveException {
        nameConflict();
        for (ClassEnv classEnv : classEnvs) {
            classEnv.resolveName();
        }
    }

    private HashMap<String, PackageNames> addStdLib() {
        HashMap<String, PackageNames> packages = new HashMap<>();
        PackageNames java = new PackageNames("java");
        PackageNames lang = new PackageNames("lang");
        PackageNames util = new PackageNames("util");
        PackageNames io = new PackageNames("io");

        java.subPackage.put(lang.name, lang);
        java.subPackage.put(util.name, util);
        java.subPackage.put(io.name, io);

        packages.put(java.name, java);
        return packages;
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
        }


    }
}
