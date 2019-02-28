package Joosc.ASTModel.Statements;

import Joosc.ASTModel.Expressions.Expression;
import Joosc.ASTBuilding.ASTStructures.Statements.IfStatementNode;


public class IfStatement extends Statement {
    private Expression expression;
    private Statement thenClause;
    private Statement elseClause = null;

    public IfStatement(IfStatementNode node) {
        expression = Expression.convertExpressionNode(node.getExpression());
        thenClause = Statement.convertStatementNode(node.getThenClause());
        elseClause = Statement.convertStatementNode(node.getElseClause());
    }

    public Expression getExpression() {
        return expression;
    }

    public Statement getElseClause() {
        return elseClause;
    }

    public Statement getThenClause() {
        return thenClause;
    }
}
