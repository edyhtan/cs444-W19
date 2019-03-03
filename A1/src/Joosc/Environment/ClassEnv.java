package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.ClassMember.FieldDeclr;
import Joosc.ASTModel.ClassMember.MethodDeclr;
import Joosc.ASTModel.Program;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

public class ClassEnv implements Env {
    TypeDeclr typeDeclr;
    GlobalEnv parent;
    Program program;
    protected HashSet<String> fields = new HashSet<>();

    ArrayList<LocalEnv> localEnvs = new ArrayList<>();


    public ClassEnv(Program program, GlobalEnv parent) {
        typeDeclr = program.getTypeDeclr();
        typeDeclr.addEnv(this);
        this.parent = parent;
        this.program = program;

        constructLocalEnvironment();
    }

    public void resolveImports() throws NamingResolveException {
        ArrayList<String> canonicalName = typeDeclr.getCanonicalName();
        String simpleName = typeDeclr.getSimpleName();
        ArrayList<ArrayList<String>> singleTypeImports = program.getSingleTypeImport();
        ArrayList<ArrayList<String>> onDemandTypeImports = program.getOnDemandTypeImport();

        HashSet<String> singleImportClasses = new HashSet<>(); // stores only class names

        // clash with class/interface declr
        for (ArrayList<String> singleImport : singleTypeImports) {
            HashSet<String> temp = new HashSet<>(singleImport);
            if (temp.contains(simpleName) && !singleImport.equals(canonicalName)) {
                throw new NamingResolveException(String.format("single type import %s clashes with type declr",
                        String.join(".", singleImport)));
            }
        }

        // no two singTypeImports clash
        for (ArrayList<String> singleImport : singleTypeImports) {
            String className = singleImport.get(singleImport.size() - 1);
            if (singleImportClasses.contains(className)) {
                throw new NamingResolveException(String.format("single type import %s clashes with another single type import at ", className));
            }
        }

        // singleType clash with onDemand
        for (ArrayList<String> onDemand : onDemandTypeImports) {
            for (String im : onDemand) {
                if (singleImportClasses.contains(im))
                    throw new NamingResolveException("single type import clashes with on demand import at " + im);
            }
        }

        // check all import-on-demand matches with package structure
        for (ArrayList<String> onDemandImport : onDemandTypeImports) {
            HashMap<String, GlobalEnv.PackageNames> searchPackage = parent.packageNames;
            for (String packageName : onDemandImport) {
                GlobalEnv.PackageNames findPackage = searchPackage.getOrDefault(packageName, null);
                if (findPackage == null) {
                    throw new NamingResolveException("could not find package name:" +
                            String.join(".", onDemandImport));
                }
                searchPackage = findPackage.subPackage;

            }
        }
    }

    // return true if there is a duplicated
    private void duplicatedFieldName() throws NamingResolveException {
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
    }

    private void constructLocalEnvironment(){
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<ClassBodyDeclr> methodDeclrs = ((ClassDeclr) typeDeclr).getClassBodyDeclrNodes();

            for (ClassBodyDeclr classBodyDeclr: methodDeclrs) {
                localEnvs.add(new LocalEnv(classBodyDeclr, this));
            }
        }
    }

    @Override
        public void resolveName() throws NamingResolveException {
        duplicatedFieldName();
        resolveImports();
    }
}
