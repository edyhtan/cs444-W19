package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.MethodDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Statements.Statement;
import javafx.util.Pair;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class MethodDeclr extends ClassMemberDeclr {
    ArrayList<Symbol> modifiers;
    Type type;
    String name;
    ArrayList<Pair<Type, String>> formalParamList;
    ArrayList<Statement> bodyBlock;
    String canonicalID;

    public MethodDeclr(MethodDeclrNode node) {
        modifiers = node.getModifiers();
        type = Type.convertTypeNode(node.getType());
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

        sb.append(typeList).append(")").append(DOT).append(type.toString());

        canonicalID = sb.toString();
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

    public String getCanonicalID() {
        return canonicalID;
    }

    public ArrayList<Symbol> getModifiers() {
        return modifiers;
    }
}
