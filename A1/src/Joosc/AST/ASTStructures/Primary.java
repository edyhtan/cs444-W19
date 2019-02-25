package Joosc.AST.ASTStructures;

import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

public class Primary extends ExpressionNode {

    public Primary(ParseTree parseTree) {

    }

    @Override
    public void weed() throws WeedingFailureException {

    }

    @Override
    public void printInfo(int level) {
        printInfoInit("Primary Expression:", level);
    }
}
