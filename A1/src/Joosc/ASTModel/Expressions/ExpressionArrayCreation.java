package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionArrayCreationNode;
import Joosc.ASTModel.Type;

public class ExpressionArrayCreation implements ExpressionPrimary {
    private Expression sizeExpression;
    private Type arrayType;

    public ExpressionArrayCreation(ExpressionArrayCreationNode node) {
        sizeExpression = Expression.convertExpressionNode(node.getSizeExpression());
        arrayType = new Type(node.getArrayType());
    }

    public Expression getSizeExpression() {
        return sizeExpression;
    }

    public Type getArrayType() {
        return arrayType;
    }
}
