package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionFieldAccessNode;

public class ExpressionFieldAccess implements Expression {
    private String fieldIdentifier;
    private Expression fieldParentExpression;

    public ExpressionFieldAccess(ExpressionFieldAccessNode node) {
        fieldIdentifier = node.getFieldIdentifier();
        fieldParentExpression = Expression.convertExpressionNode(node.getFieldParentExpression());
    }

    public String getFieldIdentifier() {
        return fieldIdentifier;
    }

    public Expression getFieldParentExpression() {
        return fieldParentExpression;
    }
}
