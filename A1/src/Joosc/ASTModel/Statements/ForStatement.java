package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.ForStatementNode;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;

import java.util.ArrayList;

public class ForStatement extends HasScope implements Statement, HasExpression {
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
    public void checkExpression(LocalEnv env) throws NamingResolveException {

    }

    @Override
    public void checkType() throws TypeCheckException {
        if(forInit instanceof HasExpression) ((HasExpression) forInit).checkType();
        if(forUpdate instanceof HasExpression) ((HasExpression) forUpdate).checkType();
        if(statement instanceof HasExpression) ((HasExpression) statement).checkType();
        expression.getType();
    }
}
