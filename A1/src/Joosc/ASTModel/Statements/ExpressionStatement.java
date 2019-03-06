package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.ExpressionStatementNode;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;

public class ExpressionStatement implements Statement, HasExpression {
    private Expression expression;

    public ExpressionStatement(ExpressionStatementNode node) {
        expression = Expression.convertExpressionNode(node.getExpression());
    }

    public Expression getExpression() {
        return expression;
    }

    @Override
    public void checkExpression(LocalEnv env) throws NamingResolveException {
        expression.addEnv(env);
        expression.validate();
    }
}
