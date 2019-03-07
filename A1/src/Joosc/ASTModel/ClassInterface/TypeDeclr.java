package Joosc.ASTModel.ClassInterface;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.AST;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.ClassMember.MethodDeclr;
import Joosc.Environment.ClassEnv;

import java.util.ArrayList;

public interface TypeDeclr extends AST {
    void buildCanonicalName(ArrayList<String> packageName);
    ArrayList<String> getCanonicalName();
    void addEnv(ClassEnv env);

    String getSimpleName();

    ArrayList<MethodDeclr> getMethods();
    ArrayList<Symbol> getModifiers();
}
