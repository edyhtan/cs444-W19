package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.ReturnStatementNode;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.ASTModel.Type;
import Joosc.Environment.Env;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

public class ReturnStatement implements Statement, HasExpression {
    private Expression expression = null;
    private Env env;

    public ReturnStatement(ReturnStatementNode node) {
        expression = Expression.convertExpressionNode(node.getExpression());
    }

    public Expression getExpression() {
        return expression;
    }

    @Override
    public void checkExpression(Env env) throws NamingResolveException {
        this.env = env;
        if (expression != null) {
            expression.addEnv(env);
            expression.validate();
        }
    }

    @Override
    public void checkType() throws TypeCheckException {
        LocalEnv local = (LocalEnv) env;
        JoosType returnType = local.getCurMethodReturnType();

        if (expression != null) {
            JoosType expressionType = expression.getType();

            if (returnType.equals(JoosType.VOID)) {
                throw new TypeCheckException("return values on void return types");
            } else if (!expressionType.isA(returnType)) {
                throw new TypeCheckException("unmatched return type");
            }
        } else {
            if (!returnType.equals(JoosType.VOID)) {
                throw new TypeCheckException("no return types on non-void methods");
            }
        }
    }
}
