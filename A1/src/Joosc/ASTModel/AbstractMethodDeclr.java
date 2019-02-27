package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.AbstractMethodDeclrNode;
import Joosc.ASTBuilding.ASTStructures.TypeNode;
import Joosc.ASTBuilding.Constants.Symbol;
import javafx.util.Pair;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class AbstractMethodDeclr implements AST {
    ArrayList<Symbol> modifiers;
    TypeNode type;
    String name;
    ArrayList<Pair<TypeNode, String>> formalParamList;
    String canonicalID;

    public AbstractMethodDeclr(AbstractMethodDeclrNode node) {
        modifiers = node.getModifiers();
        type = node.getType();
        name = node.getName();
        formalParamList = node.getFormalParamList();
    }

    public void buildCanonicalName(String className) {
        StringBuilder sb = new StringBuilder(className + DOT + name + "(");

        String typeList = formalParamList.stream()
                .map(pair -> pair.getKey().toString())
                .collect(Collectors.joining(COMMA));

        sb.append(typeList).append(")");
        canonicalID = sb.toString();
    }

    private TypeNode getType() {
        return type;
    }

    private String getName() {
        return name;
    }

    private ArrayList<Pair<TypeNode, String>> getFormalParamList() {
        return formalParamList;
    }

    private ArrayList<Symbol> getModifiers() {
        return modifiers;
    }


}
