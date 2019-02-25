package Joosc.AST.ASTStructures.Expressions;

import Joosc.AST.ASTStructures.Expressions.ExpressionNode;
import Joosc.Parser.LRGrammar.ParseTree;

public class ExpressionPrimary extends ExpressionNode {

    public ExpressionPrimary(ParseTree parseTree) {

    }

    @Override
    public void weed() {

    }

    @Override
    public void printInfo(int level) {
        printInfoInit("ExpressionPrimary Expression:", level);
    }
}
