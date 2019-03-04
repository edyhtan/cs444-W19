package Joosc.ASTModel.Statements;

import Joosc.ASTModel.Expressions.Expression;
import Joosc.ASTBuilding.ASTStructures.Statements.IfStatementNode;

import java.util.ArrayList;


public class IfStatement implements Statement, HasScope {
    private Expression expression;
    private Statement thenClause;
    private ElseBlock elseClause = null;

    public IfStatement(IfStatementNode node) {
        expression = Expression.convertExpressionNode(node.getExpression());
        thenClause = Statement.convertStatementNode(node.getThenClause());
        elseClause = new ElseBlock(Statement.convertStatementNode(node.getElseClause()));
    }

    public Expression getExpression() {
        return expression;
    }

    public Statement getElseClause() {
        return elseClause;
    }

    public Statement getThenClause() {
        return thenClause;
    }

    @Override
    public ArrayList<Statement> getBlock() {
        if (thenClause instanceof Block) {
            return ((Block) thenClause).getBlock();
        } else {
            ArrayList<Statement> statements = new ArrayList<>();
            statements.add(thenClause);
            return statements;
        }
    }
}
