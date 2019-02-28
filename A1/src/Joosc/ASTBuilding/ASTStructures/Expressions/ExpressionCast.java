package Joosc.ASTBuilding.ASTStructures.Expressions;

import Joosc.Parser.LRGrammar.ParseTree;

public class ExpressionCast extends ExpressionNode {

    public ExpressionCast(ParseTree parseTree) {

    }

    @Override
    public void weed() {}

    @Override
    public void printInfo(int level) {
        printInfoInit("Expression Cast:", level);
    }
}
