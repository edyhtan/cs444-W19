package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.ExpressionStatementNode;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;

public class ExpressionStatement implements Statement, HasExpression {
    private Expression expression;
    private boolean parentIsStatic;

    public ExpressionStatement(ExpressionStatementNode node) {
        expression = Expression.convertExpressionNode(node.getExpression());
    }

    public Expression getExpression() {
        return expression;
    }

    @Override
    public void checkExpression(Env env) throws NamingResolveException {
        expression.addEnv(env);
        expression.validate();
    }

    @Override
    public void checkType() throws TypeCheckException {
        expression.setParentIsStatic(this.parentIsStatic);
        expression.getType();
    }

    @Override
    public void setParentIsStatic(boolean parentIsStatic) {
        this.parentIsStatic = parentIsStatic;
    }
}
