package Joosc.AST.ASTStructures;

import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

public abstract class ExpressionNode extends ASTNode {

    /**
     * Every expression should be able to be evaluated some way.
     * The return type might varies. This is to be implemented during analyzing phase.
     */
    //abstract void evaluate();

    //Ghetto Constructor
    public static ExpressionNode resolveExpressionNode(ParseTree parseTree) throws ASTException {
        ParseTree contentNode = ExpressionNode.findContentNode(parseTree);
        if (contentNode.getKind().equals(Symbol.Primary)) {
            return new Primary(contentNode);
        } else if (contentNode.getChildren().size() > 1) {
            
        }
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
    public abstract void weed() throws WeedingFailureException;

    @Override
    public abstract void printInfo(int level);
}
