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
    private ArrayList<String> canonicalID;

    public ConstructorDeclr(ConstructorDeclrNode node) {
        modifiers = node.getModifiers();
        name = node.getName();

        formalParamList = node.getFormalParamList().stream()
                .map(pair -> new Pair<>(new Type(pair.getKey()), pair.getValue()))
                .collect(Collectors.toCollection(ArrayList::new));

        bodyBlock = node.getBodyBlock().stream().map(Statement::convertStatementNode)
                .collect(Collectors.toCollection(ArrayList::new));
    }

    @Override
    public void buildCanonicalName(ArrayList<String> className) {
        // TODO
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
