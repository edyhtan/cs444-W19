package Joosc.AST.ASTStructures;

import Joosc.Parser.LRGrammar.ParseTree;

public class Primary extends ExpressionNode {

    public Primary(ParseTree parseTree) {

    }

    @Override
    public void weed() {

    }

    @Override
    void printInfo(int level) {
        printInfoInit("Primary Expression:", level);
    }
}
