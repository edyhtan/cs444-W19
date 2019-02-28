package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionArrayAccessNode;

import java.util.ArrayList;

public class ExpressionArrayAccess implements ExpressionPrimary {

    private ArrayList<String> referenceName;
    private Expression referenceExpression;
    private Expression indexExpression;

    public ExpressionArrayAccess(ExpressionArrayAccessNode node) {
        referenceName = node.getReferenceName();
        referenceExpression = Expression.convertExpressionNode(node.getReferenceExpression());
        indexExpression = Expression.convertExpressionNode(node.getIndexExpression());
    }

    public ArrayList<String> getReferenceName() {
        return referenceName;
    }

    public Expression getIndexExpression() {
        return indexExpression;
    }

    public Expression getReferenceExpression() {
        return referenceExpression;
    }
}
