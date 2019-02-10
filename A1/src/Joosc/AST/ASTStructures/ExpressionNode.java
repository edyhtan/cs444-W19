package Joosc.AST.ASTStructures;

import Joosc.Parser.LRGrammar.ParseTree;

abstract class ExpressionNode extends ASTNode {

    /**
     * Every expression should be able to be evaluated some way.
     * The return type might varies. This is to be implemented during analyzing phase.
     */
    //abstract void evaluate();

    //Ghetto Constructor
    protected static ExpressionNode resolveExpressionNode(ParseTree parseTree) {
        return new AssignmentExpressionNode(parseTree);
    }

    @Override
    abstract void weed();

    @Override
    abstract void printInfo(int level);
}
