package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.WhileStatementNode;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.Environment.Env;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;

import java.util.ArrayList;

public class WhileStatement extends HasScope implements Statement, HasExpression {
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

    @Override
    public void checkExpression(Env env) throws NamingResolveException {

    }

    @Override
    public void checkType() throws TypeCheckException {

    }
}
