package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.Program;
import Joosc.ASTModel.Type;
import Joosc.Exceptions.NamingResolveException;

import java.util.*;

public class GlobalEnv implements Env {
    ArrayList<Program> programs;
    ArrayList<ClassEnv> classEnvs;
    PackageNames defaultPackage = new PackageNames("");
    PackageNames rootPackage = new PackageNames("");

    HashMap<ArrayList<String>, HashSet<ArrayList<String>>> hierarchy;


    public GlobalEnv(ArrayList<Program> programs) {
        this.programs = programs;

        // sub environment
        classEnvs = new ArrayList<>();
        hierarchy = new HashMap<>();
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

    public ClassEnv getClassEnv(ArrayList<String> qualifiedName) {
        for (ClassEnv env : classEnvs) {
            if (env.typeDeclr.getCanonicalName().equals(qualifiedName)) {
                return env;
            }
        }
        return null;
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
    public boolean isFieldDeclared(String simpleName) {
        return false;
    }

    @Override
    public FieldsVarInfo typeResolve(String name, Type type) throws NamingResolveException {
        return null;
    }

    @Override
    public ArrayList<String> typeResolve(ArrayList<String> type) throws NamingResolveException {
        return null;
    }

    @Override
    public void resolveName() throws NamingResolveException {
        buildAndResolvePackage();
        nameConflict();
        for (ClassEnv classEnv : classEnvs) {
            classEnv.resolveName();
        }
        classEnvs.forEach(x -> hierarchy.put(x.typeDeclr.getCanonicalName(), x.superSet));

        System.out.println("-----hierarchy--------");
        for(ArrayList<String> key : hierarchy.keySet()) {
            System.out.print(key + "-> \t");
            hierarchy.get(key).forEach(x->System.out.print(x+" "));
            System.out.print("\n");
        }
        System.out.println("-----------------------");

        for (ClassEnv classEnv : classEnvs) {
            classEnv.checkAcyclicHierarchy();
        }
        //TODO: contain

    }

    public void buildAndResolvePackage() throws NamingResolveException {
        // populate existing package names.
        for (Program program : programs) {
            ArrayList<String> packageLayer = program.getPackageDeclr();

            if (packageLayer.size() == 0) {
                defaultPackage.types.add(program.getTypeDeclr().getSimpleName());
                continue;
            }

            PackageNames currentPackageLevel = rootPackage;
            for (String packageName : packageLayer) {
                HashMap<String, PackageNames> subPackage = currentPackageLevel.subPackage;
                if (currentPackageLevel.types.contains(packageName)) {
                    throw new NamingResolveException("Prefix of a package is a declared type");
                }
                if (!subPackage.containsKey(packageName)) {
                    subPackage.put(packageName, new PackageNames(packageName));
                }
                currentPackageLevel = subPackage.get(packageName);
            }

            if (currentPackageLevel.subPackage.containsKey(program.getTypeDeclr().getSimpleName())) {
                throw new NamingResolveException("Prefix of a package is a declared type");
            }
            currentPackageLevel.types.add(program.getTypeDeclr().getSimpleName());
        }

        //defaultPackage.print(0);
        //rootPackage.print(0);
    }


    public boolean findPackageName(List<String> importName, boolean isOnDemand) {
        List<String> prefix = isOnDemand ? importName : importName.subList(0, importName.size()-1);
        PackageNames packageLayer = getPackageLayer(prefix);
        if (packageLayer == null) {
            return false;
        } else if (!isOnDemand) {
            return packageLayer.types.contains(importName.get(importName.size()-1));
        } else {
            return true;
        }
    }

    public PackageNames getPackageLayer(List<String> importName) {
        GlobalEnv.PackageNames currentLevel = rootPackage;
        for (int i = 0; i < importName.size(); i++) {
            String name = importName.get(i);
            if (!currentLevel.subPackage.containsKey(name)) {
                return null;
            }
            currentLevel = currentLevel.subPackage.get(name);
        }
        return currentLevel;
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
