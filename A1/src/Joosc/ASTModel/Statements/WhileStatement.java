package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.WhileStatementNode;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;

public class WhileStatement extends HasScope implements Statement, HasExpression {
    private Expression expression;
    private Statement statement;
    private boolean parentIsStatic;

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
        expression.addEnv(env);
        expression.validate();
    }

    @Override
    public void checkType() throws TypeCheckException {
        if (!expression.getType().equals(JoosType.getJoosType("boolean"))) {
            throw new TypeCheckException("Condition expression must be boolean type");
        }
    }

    @Override
    public void setParentIsStatic(boolean parentIsStatic) {
        this.parentIsStatic = parentIsStatic;
    }
}
