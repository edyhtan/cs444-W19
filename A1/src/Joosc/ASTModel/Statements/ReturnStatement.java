package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.ReturnStatementNode;
import Joosc.ASTModel.ClassMember.ConstructorDeclr;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.Environment.Env;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.JoosType;

public class ReturnStatement implements Statement, HasExpression {
    private Expression expression = null;
    public boolean in, out;
    private Env env;
    private boolean parentIsStatic;

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

        if (env.getCurrentMethod() instanceof ConstructorDeclr) {
            return;
        }

        if (expression != null) {
            expression.setParentIsStatic(this.parentIsStatic);
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

    @Override
    public void setParentIsStatic(boolean parentIsStatic) {
        this.parentIsStatic = parentIsStatic;
    }

    @Override
    public void reachabilityAnalysis(boolean input) throws UnreachableStatementException {
        in = input;
        if (!in) {
            throw new UnreachableStatementException("Unreachable statement");
        }
        out = false;
    }

    @Override
    public boolean getIn() {
        return in;
    }

    @Override
    public boolean getOut() {
        return out;
    }

}
