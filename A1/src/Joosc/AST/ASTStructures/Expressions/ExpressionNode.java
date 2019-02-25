package Joosc.AST.ASTStructures.Expressions;

import Joosc.AST.ASTStructures.ASTNode;
import Joosc.AST.ASTStructures.Primary;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
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
        ParseTree contentNode = findContentNode(parseTree);
        switch (contentNode.getKind()) {
            case Assignment:
            case CondOrExpression:
            case CondAndExpression:
            case OrExpression:
            case ExorExpression:
            case AndExpression:
            case EqualityExpression:
            case RelationalExpression:
            case AddExpression:
            case MultExpression:
                return new ExpressionBinary(contentNode);

            case UnaryExpression:
            case UnaryExpressionNotMinus:
            case CastExpression:
                return new ExpressionUnary(contentNode);

            case Primary:
            case Name:
                return new ExpressionContent(contentNode);

            default:
                throw new InvalidParseTreeStructureException(parseTree, "No matching expressions");
        }
    }

    private static ParseTree findContentNode(ParseTree p) throws ASTException {
        if (p.getKind().equals(Symbol.Primary) || p.getKind().equals(Symbol.Name) || p.getKind().equals(Symbol.Assignment) || p.getChildren().size() > 1) {
            return p;
        } else {
            return findContentNode(p.getChild(0));
        }
    }

    @Override
    public abstract void weed() throws WeedingFailureException;

    @Override
    public abstract void printInfo(int level);
}
