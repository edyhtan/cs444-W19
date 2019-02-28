package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.*;
import Joosc.ASTModel.AST;

public interface Expression extends AST {

     static Expression convertExpressionNode(ExpressionNode node) {
        if(node instanceof ExpressionBinaryNode) {
            return new ExpressionBinary((ExpressionBinaryNode) node);
        }

        if(node instanceof ExpressionUnaryNode) {
            return new ExpressionUnary((ExpressionUnaryNode) node);
        }

        if(node instanceof ExpressionContentNode) {
            return new ExpressionContent((ExpressionContentNode) node);
        }

        if(node instanceof ExpressionMethodInvocationNode) {
            return new ExpressionMethodInvocation((ExpressionMethodInvocationNode) node);
        }

        if(node instanceof ExpressionClassInstanceCreationNode) {
            return new ExpressionClassInstanceCreation((ExpressionClassInstanceCreationNode) node);
        }
        return null;
    }
}
