package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionContentNode;

import java.util.ArrayList;

public class ExpressionContent implements Expression {
    private String literal;
    private ArrayList<String> name;

    public ExpressionContent(ExpressionContentNode node) {
        literal = node.getLiteral();
        name = node.getName();
    }

    public String getLiteral() {
        return literal;
    }

    public ArrayList<String> getName() {
        return name;
    }
}
