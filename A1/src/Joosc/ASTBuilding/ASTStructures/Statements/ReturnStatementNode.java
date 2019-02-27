package Joosc.ASTBuilding.ASTStructures.Statements;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionNode;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.List;

public class ReturnStatement extends StatementNode {
    ExpressionNode expression = null;

    ReturnStatement(ParseTree tree) throws ASTException {
        List<ParseTree> children = tree.getChildren();

        if (children.size() > 2) {
            expression = ExpressionNode.resolveExpressionNode(children.get(1));
        }
    }

    @Override
    public void weed() throws WeedingFailureException {
        if (expression != null) expression.weed();
    }

    @Override
    public void printInfo(int level) {
    }
}
