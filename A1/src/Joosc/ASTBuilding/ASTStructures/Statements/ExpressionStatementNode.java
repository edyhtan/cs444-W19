package Joosc.ASTBuilding.ASTStructures.Statements;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

public class ExpressionStatementNode extends StatementNode{
    ExpressionNode expression;

    ExpressionStatementNode(ParseTree tree) throws ASTException {
        ParseTree expressionParseTreeNode = tree.getChild(0, Symbol.StatementExpression).getChild(0);
        expression = ExpressionNode.resolveExpressionNode(expressionParseTreeNode);
    }

    @Override
    public void weed() throws WeedingFailureException { }

    @Override
    public void printInfo(int level) {
        printInfoInit("ExpressionStatementNode: ", level);
        expression.printInfo(level + 1);
    }

    public ExpressionNode getExpression() {
        return expression;
    }
}
