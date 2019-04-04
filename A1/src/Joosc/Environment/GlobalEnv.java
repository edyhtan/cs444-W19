package Joosc.Environment;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.Program;
import Joosc.ASTModel.Type;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;
import Joosc.util.TreeSet;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

public class GlobalEnv implements Env {
    public ArrayList<Program> programs;
    public ArrayList<ClassEnv> classEnvs;
    PackageNames defaultPackage = new PackageNames("");
    PackageNames rootPackage = new PackageNames("");

    public static GlobalEnv instance = null;

    public GlobalEnv(ArrayList<Program> programs) {
        this.programs = programs;

        // sub environment
        classEnvs = new ArrayList<>();
        programs.forEach(x -> {
            classEnvs.add(new ClassEnv(x, this));
        });

        instance = this;
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

    public ClassEnv getClassEnv(ArrayList<String> qualifiedName, boolean isDefaultPkg) {
        if (isDefaultPkg) {
            String simpleName = qualifiedName.get(0);
            JoosType found = GlobalEnv.instance.defaultPackage.getTypes().get(simpleName);
            if (found != null) {
                return found.getClassEnv();
            }
        }

        ArrayList<String> prefix = new ArrayList<>(qualifiedName);
        String name = prefix.remove(prefix.size() - 1);
        PackageNames pkg = getPackageLayer(prefix);
        if (pkg != null) {
            JoosType found = pkg.types.get(name);

            if (found != null) {
                return found.getClassEnv();
            } else {
                return null;
            }
        } else {
            return null;
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
    public boolean isFieldDeclared(String simpleName) {
        return false;
    }

    @Override
    public boolean hasMethodSignature(String f) {
        return false;
    }

    @Override
    public FieldsVarInfo typeResolve(String name, Type type, ArrayList<Symbol> modifiers) throws NamingResolveException {
        return null;
    }

    @Override
    public JoosType typeResolve(ArrayList<String> type) throws NamingResolveException {
        return null;
    }

    @Override
    public TypeInfo typeResolve(Type type) throws NamingResolveException {
        return null;
    }

    @Override
    public void semanticAnalysis() throws NamingResolveException, TypeCheckException {
        buildAndResolvePackage();
        nameConflict();
        for (ClassEnv classEnv : classEnvs) {
            classEnv.semanticAnalysis();
        }

        for (ClassEnv classEnv : classEnvs) {
            classEnv.getFullSuperSet(new TreeSet<>());
            classEnv.resolveDefaultSuperCtor();
        }

        for (ClassEnv classEnv : classEnvs) {
            classEnv.variableContain();
            classEnv.getFullMethodSignature();
            classEnv.addSuperToJooscType();
        }

        ArrayType.initIllusion();

        for (ClassEnv classEnv : classEnvs) {
            classEnv.resolveFieldsAndLocalVar();
        }

        for (ClassEnv classEnv : classEnvs) {
            classEnv.buildSymbolTable();
            classEnv.buildMethodCallTable();
        }
    }

    @Override
    public JoosType getJoosType() {
        return null;
    }

    public void buildAndResolvePackage() throws NamingResolveException {
        // populate existing package names.
        for (Program program : programs) {
            ArrayList<String> packageLayer = program.getPackageDeclr();

            if (packageLayer.size() == 0) {
                defaultPackage.types.put(program.getTypeDeclr().getSimpleName(), new JoosType(program.getTypeDeclr().getClassEnv()));
                continue;
            }

            PackageNames currentPackageLevel = rootPackage;
            for (String packageName : packageLayer) {
                HashMap<String, PackageNames> subPackage = currentPackageLevel.subPackage;
                if (currentPackageLevel.types.containsKey(packageName)) {
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

            currentPackageLevel.types.put(program.getTypeDeclr().getSimpleName(),
                    new JoosType(program.getTypeDeclr().getClassEnv()));
        }
    }


    public boolean findPackageName(List<String> importName, boolean isOnDemand) {
        List<String> prefix = isOnDemand ? importName : importName.subList(0, importName.size() - 1);
        PackageNames packageLayer = getPackageLayer(prefix);
        if (packageLayer == null) {
            return false;
        } else if (!isOnDemand) {
            return packageLayer.types.containsKey(importName.get(importName.size() - 1));
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
        HashMap<String, JoosType> types = new HashMap<>();

        PackageNames(String packageName) {
            name = packageName;
        }

        public HashMap<String, JoosType> getTypes() {
            return types;
        }

        public HashMap<String, PackageNames> getSubPackage() {
            return subPackage;
        }

    }

    @Override
    public FieldsVarInfo getFieldInfo(String name) {
        return null;
    }

    @Override
    public FieldsVarInfo getVarInfo(String name) {
        return null;
    }

    @Override
    public JoosType findResolvedType(String name) {
        return null;
    }

    @Override
    public FieldsVarInfo getStaticFieldInfo(String name) {
        return null;
    }

    @Override
    public FieldsVarInfo getDeclaredFieldInfo(String name) {
        return null;
    }

    @Override
    public HashMap<String, MethodInfo> getAllMethodSignature() {
        return null;
    }

    @Override
    public ArrayList<String> getPackageDeclr() {
        return null;
    }

    @Override
    public void assignOffset(String name, int offset) {

    }

    @Override
    public HashMap<String, MethodInfo> getDeclaredMethodSignature() {
        return null;
    }
}
