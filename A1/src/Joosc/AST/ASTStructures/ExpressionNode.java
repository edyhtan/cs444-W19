package Joosc.AST.ASTStructures;

import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

abstract class ExpressionNode extends ASTNode {

    /**
     * Every expression should be able to be evaluated some way.
     * The return type might varies. This is to be implemented during analyzing phase.
     */
    //abstract void evaluate();

    //Ghetto Constructor
    protected static ExpressionNode resolveExpressionNode(ParseTree parseTree) throws ASTException {
        ParseTree contentNode = ExpressionNode.findContentNode(parseTree);
        
        return new AssignmentExpressionNode(parseTree);
    }

    private static ParseTree findContentNode(ParseTree parseTree) throws ASTException {
        if (parseTree.getKind().equals(Symbol.Primary) || parseTree.getChildren().size() > 1) {
            return parseTree;
        } else {
            return findContentNode(parseTree.getChild(0));
        }
    }

    @Override
    abstract void weed();

    @Override
    abstract void printInfo(int level);
}
