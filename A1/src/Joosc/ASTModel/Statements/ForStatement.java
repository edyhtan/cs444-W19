package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.ForStatementNode;
import Joosc.ASTModel.Expressions.Expression;

public class ForStatement implements Statement {
    private Statement forInit = null;
    private Expression expression = null;
    private Statement forUpdate = null;
    private Statement statement;

    public ForStatement(ForStatementNode node) {
        forInit = Statement.convertStatementNode(node.getForInit());
        forUpdate = Statement.convertStatementNode(node.getForUpdate());
        expression = Expression.convertExpressionNode(node.getExpression());
        statement = Statement.convertStatementNode(node.getStatement());
    }

    public Statement getStatement() {
        return statement;
    }

    public Expression getExpression() {
        return expression;
    }

    public Statement getForInit() {
        return forInit;
    }

    public Statement getForUpdate() {
        return forUpdate;
    }
}
