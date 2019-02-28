package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionUnaryNode;
import Joosc.ASTBuilding.Constants.Symbol;

import java.util.ArrayList;

public class ExpressionUnary implements Expression {
    private Symbol kind;
    private Symbol unaryOperator;
    private Expression targetNode;
    private ArrayList<String> castingName;

    public ExpressionUnary(ExpressionUnaryNode node) {
        kind = node.getKind();
        unaryOperator = node.getUnaryOperator();
        targetNode = Expression.convertExpressionNode(node.getTargetNode());
        castingName = node.getCastingName();
    }

    public Symbol getUnaryOperator() {
        return unaryOperator;
    }

    public ArrayList<String> getCastingName() {
        return castingName;
    }

    public Symbol getKind() {
        return kind;
    }

    public Expression getTargetNode() {
        return targetNode;
    }
}
