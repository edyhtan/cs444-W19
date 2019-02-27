package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.AbstractMethodDeclrNode;
import Joosc.ASTBuilding.ASTStructures.TypeNode;
import Joosc.ASTBuilding.Constants.Symbol;
import javafx.util.Pair;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class AbstractMethodDeclr implements AST {
    private ArrayList<Symbol> modifiers;
    private TypeNode type;
    private String name;
    private ArrayList<Pair<TypeNode, String>> formalParamList;
    private String canonicalID;

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

        sb.append(typeList).append(")").append(type.toString());
        canonicalID = sb.toString();
    }

    public TypeNode getType() {
        return type;
    }

    public String getName() {
        return name;
    }

    public ArrayList<Pair<TypeNode, String>> getFormalParamList() {
        return formalParamList;
    }

    public ArrayList<Symbol> getModifiers() {
        return modifiers;
    }

    public String getCanonicalID() {
        return canonicalID;
    }
}
