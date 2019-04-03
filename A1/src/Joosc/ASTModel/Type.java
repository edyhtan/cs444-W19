package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.TypeNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.AsmWriter.AsmWriter;

import java.util.ArrayList;
import java.util.Arrays;

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

    public ArrayList<String> getTypeName() {
        boolean isArray = kind == Symbol.ArrayType;
        if (names != null) {
            return getNames();
        } else {
            if (isArray) {
                return new ArrayList<>(Arrays.asList(getArrayKind().getSymbolString()));
            } else {
                return new ArrayList<>(Arrays.asList(getKind().getSymbolString()));
            }
        }
    }

    //Code Gen
    AsmWriter asmWriter;

    @Override
    public void codeGen(int indent) {

    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
