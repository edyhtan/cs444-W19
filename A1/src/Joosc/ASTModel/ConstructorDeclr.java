package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.ConstructorDeclrNode;
import Joosc.ASTBuilding.ASTStructures.Statements.StatementNode;
import Joosc.ASTBuilding.ASTStructures.TypeNode;
import Joosc.ASTBuilding.Constants.Symbol;
import javafx.util.Pair;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class ConstructorDeclr implements ClassBodyDeclr {
    private ArrayList<Symbol> modifiers;
    private String name;
    private ArrayList<Pair<TypeNode, String>> formalParamList;
    private ArrayList<StatementNode> bodyBlock;
    private String canonicalID;

    public ConstructorDeclr(ConstructorDeclrNode node) {
        modifiers = node.getModifiers();
        name = node.getName();
        formalParamList = node.getFormalParamList();
        bodyBlock = node.getBodyBlock();
    }

    @Override
    public void buildCanonicalName(String className) {
        StringBuilder sb = new StringBuilder(className + DOT + name + "(");

        String typeList = formalParamList.stream()
                .map(pair -> pair.getKey().toString())
                .collect(Collectors.joining(COMMA));

        sb.append(typeList).append(")");
        canonicalID = sb.toString();
    }

    private String getName() {
        return name;
    }

    private ArrayList<StatementNode> getBodyBlock() {
        return bodyBlock;
    }

    private ArrayList<Pair<TypeNode, String>> getFormalParamList() {
        return formalParamList;
    }

    private ArrayList<Symbol> getModifiers() {
        return modifiers;
    }
}
