package Joosc.AST.ASTStructures.Statements;

import Joosc.AST.ASTStructures.Expressions.ExpressionNode;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.List;

public class WhileStatement extends StatementNode {
    ExpressionNode expression;
    StatementNode statement;

    WhileStatement(ParseTree tree) throws ASTException {
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
}
