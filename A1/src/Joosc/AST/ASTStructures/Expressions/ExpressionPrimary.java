package Joosc.AST.ASTStructures.Expressions;

import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Parser.LRGrammar.ParseTree;

public abstract class ExpressionPrimary extends ExpressionNode {

    public static ExpressionNode resolvePrimary(ParseTree parseTree) throws ASTException {
        ParseTree child = parseTree.getChild(0);
        if (child.getKind().equals(Symbol.PrimaryNoNewArray)) {
            if (child.getChildren().size() > 1) { // child is ( Expression )
                return resolveExpressionNode(child.getChild(1));
            }
            child = child.getChild(0);
            switch (child.getKind()) {
                case Literal:
                case This:
                case Name:
                    return new ExpressionContent(child);
                case ClassInstanceCreation:
                    return new ExpressionClassInstanceCreation(child);
                case FieldAccess:
                case MethodInvocation:
                case ArrayAccess:
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
