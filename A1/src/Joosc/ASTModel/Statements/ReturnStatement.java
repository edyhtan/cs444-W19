package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.ReturnStatementNode;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.Environment.Env;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;

public class ReturnStatement implements Statement, HasExpression {
    private Expression expression = null;

    public ReturnStatement(ReturnStatementNode node) {
        expression = Expression.convertExpressionNode(node.getExpression());
    }

    public Expression getExpression() {
        return expression;
    }

    @Override
    public void checkExpression(Env env) throws NamingResolveException {
        if (expression != null) {
            expression.addEnv(env);
            expression.validate();
        }
    }

    @Override
    public void checkType() throws TypeCheckException {
        if(expression!=null) expression.getType();
    }
}
