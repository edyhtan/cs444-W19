package Joosc.ASTBuilding.ASTStructures.Statements;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionNode;
import Joosc.ASTModel.Statements.Statement;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.List;

public class WhileStatementNode extends StatementNode {
    ExpressionNode expression;
    StatementNode statement;

    WhileStatementNode(ParseTree tree) throws ASTException {
        List<ParseTree> children = tree.getChildren();

        expression = ExpressionNode.resolveExpressionNode(children.get(2));
        statement = StatementNode.resolveStatementNode(children.get(4));
    }

    @Override
    public void weed() throws WeedingFailureException {
        expression.weed();
        statement.weed();
    }

    @Override
    public void printInfo(int level) {
    }

    public ExpressionNode getExpression() {
        return expression;
    }

    public StatementNode getStatement() {
        return statement;
    }
}
