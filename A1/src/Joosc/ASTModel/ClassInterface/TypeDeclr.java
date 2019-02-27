package Joosc.ASTModel.ClassInterface;

import Joosc.ASTModel.AST;

import java.util.ArrayList;

public interface TypeDeclr extends AST {

    void buildCanonicalName(ArrayList<String> packageName);

}
