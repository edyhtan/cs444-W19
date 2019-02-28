package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.WhileStatementNode;
import Joosc.ASTModel.Expressions.Expression;

public class WhileStatement implements Statement {
    private Expression expression;
    private Statement statement;

    public WhileStatement(WhileStatementNode node) {
        expression = Expression.convertExpressionNode(node.getExpression());
        statement = Statement.convertStatementNode(node.getStatement());
    }

    public Expression getExpression() {
        return expression;
    }

    public Statement getStatement() {
        return statement;
    }
}
