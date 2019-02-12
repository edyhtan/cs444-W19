package Joosc.AST.ASTStructures;

import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

public class UnaryExpression extends ExpressionNode {

    public UnaryExpression(ParseTree parseTree) {

    }

    @Override
    public void weed() throws WeedingFailureException {

    }

    @Override
    public void printInfo(int level) {
        printInfoInit("Unary Expression", level);
    }
}
