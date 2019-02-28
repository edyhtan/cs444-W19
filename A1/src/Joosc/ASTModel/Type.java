package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.TypeNode;
import Joosc.ASTBuilding.Constants.Symbol;

import java.util.ArrayList;

public abstract class Type extends AST {
    Symbol kind;
    ArrayList<String> names;

    public static Type convertTypeNode(TypeNode node) {

        //TODO
        return null;
    }
}
