package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.*;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.AST;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

public abstract class Expression extends HasType implements AST {
    Symbol kind;
    protected JoosType joosType;
     public static Expression convertExpressionNode(ExpressionNode node) {
        if(node instanceof ExpressionBinaryNode) {
            return new ExpressionBinary((ExpressionBinaryNode) node);
        }

        if(node instanceof ExpressionUnaryNode) {
            return new ExpressionUnary((ExpressionUnaryNode) node);
        }

        if(node instanceof ExpressionContentNode) {
            return ExpressionContent.getContent((ExpressionContentNode) node);
        }

        if(node instanceof ExpressionMethodInvocationNode) {
            return new ExpressionMethodInvocation((ExpressionMethodInvocationNode) node);
        }

        if(node instanceof ExpressionClassInstanceCreationNode) {
            return new ExpressionClassInstanceCreation((ExpressionClassInstanceCreationNode) node);
        }

        if(node instanceof ExpressionFieldAccessNode) {
             return new ExpressionFieldAccess((ExpressionFieldAccessNode) node);
        }

        if(node instanceof ExpressionArrayCreationNode) {
            return new ExpressionArrayCreation((ExpressionArrayCreationNode) node);
        }

        if(node instanceof ExpressionArrayAccessNode) {
            return new ExpressionArrayAccess((ExpressionArrayAccessNode) node);
        }

        if(node instanceof ExpressionTypeNode) {
            return new ExpressionType((ExpressionTypeNode) node);
        }


        return null;
    }

    public abstract JoosType getType() throws TypeCheckException;

}
