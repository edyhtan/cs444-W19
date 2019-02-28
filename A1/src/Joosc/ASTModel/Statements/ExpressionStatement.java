package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.ExpressionStatementNode;
import Joosc.ASTModel.Expressions.Expression;

public class ExpressionStatement implements Statement {
    private Expression expression;

    public ExpressionStatement(ExpressionStatementNode node) {
        expression = Expression.convertExpressionNode(node.getExpression());
    }

    public Expression getExpression() {
        return expression;
    }
}
