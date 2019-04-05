package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.ExpressionStatementNode;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.AsmWriter.AsmWriter;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;

public class ExpressionStatement implements Statement, HasExpression {
    private Expression expression;
    public boolean in, out;
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
    public void reachabilityAnalysis(boolean input) throws UnreachableStatementException {
        in = input;
        if (!in) {
            throw new UnreachableStatementException("Unreachable statement");
        }
        out = input;
    }

    @Override
    public boolean getIn() {
        return in;
    }

    @Override
    public boolean getOut() {
        return out;
    }

    public void setParentIsStatic(boolean parentIsStatic) {
        this.parentIsStatic = parentIsStatic;
    }

    //Code Gen
    AsmWriter asmWriter;

    @Override
    public void codeGen(int indent) {
        expression.addWriter(asmWriter);
        expression.codeGen(indent);
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
