package Joosc.ASTModel.ClassInterface;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.AST;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.ClassMember.MethodDeclr;
import Joosc.Environment.ClassEnv;
import Joosc.Exceptions.UninitializedVariableException;
import Joosc.Exceptions.UnreachableStatementException;

import java.util.ArrayList;

public interface TypeDeclr extends AST {
    void buildCanonicalName(ArrayList<String> packageName);
    ArrayList<String> getCanonicalName();
    void addEnv(ClassEnv env);
    void reachabilityAnalysis() throws UnreachableStatementException;
    void definiteAssignmentAnalysis() throws UninitializedVariableException;

    ClassEnv getClassEnv();
    String getSimpleName();

    String getClassTagName();

    ArrayList<MethodDeclr> getMethods();
    ArrayList<Symbol> getModifiers();

    ArrayList<ArrayList<String>> getParentInterfaces();
}
