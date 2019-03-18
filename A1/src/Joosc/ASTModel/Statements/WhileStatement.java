package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.WhileStatementNode;
import Joosc.ASTModel.Expressions.ConstantExpression;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.Environment.Env;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;

import java.util.ArrayList;

public class WhileStatement extends HasScope implements Statement, HasExpression {
    private Expression expression;
    private Statement statement;
    boolean in,out;

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

    @Override
    public ArrayList<Statement> getBlock() {
        if (statement instanceof Block) {
            return ((Block) statement).getBlock();
        } else {
            ArrayList<Statement> statements = new ArrayList<>();
            statements.add(statement);
            return statements;
        }
    }

    @Override
    public void passDownScopes() {

    }

    // TODO: check type is boolean
    @Override
    public void checkExpression(Env env) throws NamingResolveException {

    }

    @Override
    public void checkType() throws TypeCheckException {

    }

    @Override
    public void reachabilityAnalysis(boolean input) throws UnreachableStatementException {
        in = input;
        if (!in) {
            throw new UnreachableStatementException("Unreachable statement");
        }
        if (expression.isConstantExpression()) {
            ConstantExpression constantExpression = (ConstantExpression) expression;
            if (constantExpression.evaluateConstant().type.equals("boolean")) {
                if (constantExpression.evaluateConstant().toBoolean()) {    // infinite loop
                    statement.reachabilityAnalysis(in);
                    out = false;
                } else {
                    statement.reachabilityAnalysis(false);
                    out = in;
                }
            } else {
                throw new UnreachableStatementException("Should actually be a type check error. Expression in while condition must be boolean");
            }
        } else {
            statement.reachabilityAnalysis(in);
            out = in;
        }
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
