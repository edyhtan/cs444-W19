package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.ConstructorDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Statements.Statement;
import javafx.util.Pair;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class ConstructorDeclr implements ClassBodyDeclr {
    private ArrayList<Symbol> modifiers;
    private String name;
    private ArrayList<Pair<Type, String>> formalParamList;
    private ArrayList<Statement> bodyBlock;
    private String canonicalID;

    public ConstructorDeclr(ConstructorDeclrNode node) {
        modifiers = node.getModifiers();
        name = node.getName();

        formalParamList = node.getFormalParamList().stream()
                .map(pair -> new Pair<>(Type.convertTypeNode(pair.getKey()), pair.getValue()))
                .collect(Collectors.toCollection(ArrayList::new));

        bodyBlock = node.getBodyBlock().stream().map(stmt -> Statement.convertStatementNode(stmt))
                .collect(Collectors.toCollection(ArrayList::new));
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

    public String getName() {
        return name;
    }

    public ArrayList<Statement> getBodyBlock() {
        return bodyBlock;
    }

    public ArrayList<Pair<Type, String>> getFormalParamList() {
        return formalParamList;
    }

    public ArrayList<Symbol> getModifiers() {
        return modifiers;
    }
}
