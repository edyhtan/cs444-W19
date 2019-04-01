package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.ClassDeclrNode;
import Joosc.ASTBuilding.ASTStructures.InterfaceDeclrNode;
import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.InterfaceDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.Exceptions.UninitializedVariableException;
import Joosc.Exceptions.UnreachableStatementException;

import java.util.ArrayList;

public class Program implements AST {
    private ArrayList<String> packageDeclr;
    private ArrayList<ArrayList<String>> singleTypeImport;
    private ArrayList<ArrayList<String>> onDemandTypeImport;

    private TypeDeclr typeDeclr;

    public Program(Joosc.ASTBuilding.ASTStructures.Program program) {
        this.packageDeclr = program.getPackageDeclr() != null ? program.getPackageDeclr() : new ArrayList<>();
        this.singleTypeImport = program.getSingleTypeImport();
        this.onDemandTypeImport = program.getOnDemandTypeImport();
        if (program.getTypeDeclr() instanceof ClassDeclrNode) {
            typeDeclr = new ClassDeclr((ClassDeclrNode) program.getTypeDeclr());
        } else {
            typeDeclr = new InterfaceDeclr((InterfaceDeclrNode) program.getTypeDeclr());
        }
        typeDeclr.buildCanonicalName(packageDeclr == null ? new ArrayList<>() : packageDeclr);
    }

    public ArrayList<String> getClassCanonicalName() {
        return typeDeclr.getCanonicalName();
    }

    public String getClassCanonicalNameStr() {
        StringBuilder sb = new StringBuilder("");
        for(String s: typeDeclr.getCanonicalName()){
            sb.append(s).append(".");
        }
        return sb.toString();
    }

    public void reachabilityAnalysis() throws UnreachableStatementException {
        typeDeclr.reachabilityAnalysis();
    }

    public void definiteAssignmentAnalysis() throws UninitializedVariableException {

    }

    public void staticAnalysis() throws UnreachableStatementException, UninitializedVariableException {
        reachabilityAnalysis();
        definiteAssignmentAnalysis();
    }

    public ArrayList<String> getPackageDeclr() {
        return packageDeclr;
    }

    public TypeDeclr getTypeDeclr() {
        return typeDeclr;
    }

    public ArrayList<ArrayList<String>> getSingleTypeImport() {
        return singleTypeImport;
    }

    public ArrayList<ArrayList<String>> getOnDemandTypeImport() {
        return onDemandTypeImport;
    }
}
