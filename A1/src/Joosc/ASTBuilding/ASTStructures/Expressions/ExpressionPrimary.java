package Joosc.ASTBuilding.ASTStructures.Expressions;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Parser.LRGrammar.ParseTree;

public abstract class ExpressionPrimary extends ExpressionNode {

    public static ExpressionNode resolvePrimary(ParseTree parseTree) throws ASTException {
        ParseTree child = parseTree.getKind().equals(Symbol.Primary) ? parseTree.getChild(0) : parseTree;
        if (child.getKind().equals(Symbol.PrimaryNoNewArray)) {
            if (child.getChildren().size() > 1) { // child is ( Expression )
                return resolveExpressionNode(child.getChild(1));
            }
            child = child.getChild(0);
            switch (child.getKind()) {
                case Literal:
                case This:
                case Name:
                    return new ExpressionContentNode(child);
                case ClassInstanceCreation:
                    return new ExpressionClassInstanceCreation(child);
                case FieldAccess:
                    return new ExpressionFieldAccess(child);
                case MethodInvocation:
                    return new ExpressionMethodInvocation(child);
                case ArrayAccess:
                    return new ExpressionArrayAccess(child);
                default:
                    return resolveExpressionNode(child);
            }
        } else if (child.getKind().equals(Symbol.ArrayCreation)) {
            return new ExpressionArrayCreation(child);
        } else {
            throw new InvalidParseTreeStructureException(parseTree, "Invalid Primary Expression Node");
        }
    }

}
