package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.ClassDeclrNode;
import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import java.util.ArrayList;

public class Program implements AST {
    private ArrayList<String> packageDeclr;
    private ArrayList<ArrayList<String>> singleTypeImport;
    private ArrayList<ArrayList<String>> onDemandTypeImport;

    private TypeDeclr typeDeclr;

    public Program(Joosc.ASTBuilding.ASTStructures.Program program) {
        this.packageDeclr = program.getPackageDeclr();
        this.singleTypeImport = program.getSingleTypeImport();
        this.onDemandTypeImport = program.getOnDemandTypeImport();
        if (program.getTypeDeclr() instanceof ClassDeclrNode) {
            typeDeclr = new ClassDeclr((ClassDeclrNode) program.getTypeDeclr());
            typeDeclr.buildCanonicalName(packageDeclr == null ? "" : String.join(".", packageDeclr));
        }
    }

    public String getClassCanonicalName() {
        return typeDeclr.getCanonicalName();
    }

    public ArrayList<String> getPackageDeclr() {
        return packageDeclr;
    }

    public TypeDeclr getTypeDeclr() {
        return typeDeclr;
    }

    public ArrayList<ArrayList<String>> singleTypeImport() {
        return singleTypeImport;
    }

    public ArrayList<ArrayList<String>> getOnDemandTypeImport() {
        return onDemandTypeImport;
    }
}
