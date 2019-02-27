package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.MethodDeclrNode;
import Joosc.ASTBuilding.ASTStructures.Statements.StatementNode;
import Joosc.ASTBuilding.ASTStructures.TypeNode;
import Joosc.ASTBuilding.Constants.Symbol;
import javafx.util.Pair;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class MethodDeclr implements ClassMemberDeclr {
    ArrayList<Symbol> modifiers;
    TypeNode type;
    String name;
    ArrayList<Pair<TypeNode, String>> formalParamList;
    ArrayList<StatementNode> bodyBlock;
    String canonicalID;

    public MethodDeclr(MethodDeclrNode node) {
        modifiers = node.getModifiers();
        type = node.getType();
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

        sb.append(typeList).append(")").append(DOT).append(type.toString());

        canonicalID = sb.toString();
    }

    public TypeNode getType() {
        return type;
    }

    public ArrayList<StatementNode> getBodyBlock() {
        return bodyBlock;
    }

    public ArrayList<Pair<TypeNode, String>> getFormalParamList() {
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
