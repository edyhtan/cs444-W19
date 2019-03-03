package Joosc.ASTModel.ClassInterface;

import Joosc.ASTModel.AST;
import Joosc.Environment.ClassEnv;

import java.util.ArrayList;

public interface TypeDeclr extends AST {
    void buildCanonicalName(ArrayList<String> packageName);
    ArrayList<String> getCanonicalName();
    void addEnv(ClassEnv env);

    String getSimpleName();
}
