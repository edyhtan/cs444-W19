package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.MethodDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Statements.Statement;
import javafx.util.Pair;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class MethodDeclr implements ClassMemberDeclr {
    ArrayList<Symbol> modifiers;
    Type type;
    String name;
    ArrayList<Pair<Type, String>> formalParamList;
    ArrayList<Statement> bodyBlock;
    ArrayList<String> canonicalID;

    public MethodDeclr(MethodDeclrNode node) {
        modifiers = node.getModifiers();
        type = new Type(node.getType());
        name = node.getName();

        formalParamList = node.getFormalParamList().stream()
                .map(pair -> new Pair<>(new Type(pair.getKey()), pair.getValue()))
                .collect(Collectors.toCollection(ArrayList::new));

        bodyBlock = node.getBodyBlock().stream().map(Statement::convertStatementNode)
                .collect(Collectors.toCollection(ArrayList::new));
    }



    public void buildCanonicalName(ArrayList<String> className) {
        //TODO
    }

    public Type getType() {
        return type;
    }

    public ArrayList<Statement> getBodyBlock() {
        return bodyBlock;
    }

    public ArrayList<Pair<Type, String>> getFormalParamList() {
        return formalParamList;
    }

    public String getName() {
        return name;
    }

    public ArrayList<String> getCanonicalID() {
        return canonicalID;
    }

    public ArrayList<Symbol> getModifiers() {
        return modifiers;
    }
}
