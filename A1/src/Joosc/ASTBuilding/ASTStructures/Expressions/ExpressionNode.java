package Joosc.ASTBuilding.ASTStructures.Expressions;

import Joosc.ASTBuilding.ASTStructures.ASTNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.lang.reflect.Array;

public abstract class ExpressionNode extends ASTNode {

    public String kind;

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
                return new ExpressionBinaryNode(contentNode);

            case UnaryExpression:
            case UnaryExpressionNotMinus:
            case CastExpression:
                return new ExpressionUnaryNode(contentNode);

            case Primary:
                return ExpressionPrimaryNode.resolvePrimary(contentNode);
            case FieldAccess:
                return new ExpressionFieldAccessNode(contentNode);
            case ArrayAccess:
                return new ExpressionArrayAccessNode(contentNode);
            case Name:
                return new ExpressionContentNode(contentNode);
            case MethodInvocation:
                return new ExpressionMethodInvocationNode(contentNode);
            case ClassInstanceCreation:
                return new ExpressionClassInstanceCreationNode(parseTree);
            case ArrayType:
            case ClassOrInterfaceType:
                return new ExpressionTypeNode(contentNode);
            default:
                throw new InvalidParseTreeStructureException(parseTree, "No matching expressions");
        }
    }

    private static ParseTree findContentNode(ParseTree p) throws ASTException {
        if (p.getKind().equals(Symbol.Primary) || p.getKind().equals(Symbol.Name) || p.getKind().equals(Symbol.Assignment) || p.getChildren().size() > 1 ||
                p.getKind().equals(Symbol.ArrayType) || p.getKind().equals(Symbol.ClassOrInterfaceType)) {
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
