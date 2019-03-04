package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.TypeNode;
import Joosc.ASTBuilding.Constants.Symbol;

import java.util.ArrayList;

public class Type implements AST {
    private Symbol kind, arrayKind;
    private ArrayList<String> names;

    public Type(TypeNode node){
        kind = node.getKind();
        arrayKind = node.getArrayKind();
        names = node.getNames();
    }

    public Symbol getKind() {
        return kind;
    }

    public Symbol getArrayKind() {
        return arrayKind;
    }

    public ArrayList<String> getNames() {
        return names;
    }
}
