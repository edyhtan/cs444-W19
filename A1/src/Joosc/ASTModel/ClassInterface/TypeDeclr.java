package Joosc.ASTModel.ClassInterface;

import Joosc.ASTModel.AST;
import Joosc.Environment.ClassEnv;

public interface TypeDeclr extends AST {
    void buildCanonicalName(String packageName);
    String getCanonicalName();
    void addEnv(ClassEnv env);
}
