package Joosc.AST.ASTStructures;

import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

public class BinaryExpression extends ExpressionNode {

    public BinaryExpression(ParseTree parseTree) {
        this.parseTree = parseTree;
    }

    @Override
    public  void weed() throws WeedingFailureException {

    }

    @Override
    public void printInfo(int level) {
        printInfoInit("Binary Expression:", level);
    }
}
