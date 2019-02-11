package Joosc.AST.ASTStructures;

import Joosc.Parser.LRGrammar.ParseTree;

public class BinaryExpression extends ExpressionNode {

    public BinaryExpression(ParseTree parseTree) {
        this.parseTree = parseTree;
    }

    @Override
    public void weed() {

    }

    @Override
    public void printInfo(int level) {
        printInfoInit("Binary Expression:", level);
    }
}
