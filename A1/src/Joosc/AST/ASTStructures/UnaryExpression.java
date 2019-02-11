package Joosc.AST.ASTStructures;

import Joosc.Parser.LRGrammar.ParseTree;

public class UnaryExpression extends ExpressionNode {

    public UnaryExpression(ParseTree parseTree) {

    }

    @Override
    public void weed() {

    }

    @Override
    void printInfo(int level) {
        printInfoInit("Unary Expression", level);
    }
}
