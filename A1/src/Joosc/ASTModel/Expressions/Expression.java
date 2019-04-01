package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.*;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.AST;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.JoosType;

import java.util.HashSet;

public abstract class Expression extends HasType implements AST {
    Symbol kind;
    protected JoosType joosType;
    protected boolean isLHS = false;
    protected boolean isFinal = false;
    protected boolean parentIsStatic = false;

    public void setParentIsStatic(boolean parentIsStatic) {
        this.parentIsStatic = parentIsStatic;
    }

    public void setIsLHS(boolean isLHS) {
        this.isLHS = isLHS;
    }

    public static Expression convertExpressionNode(ExpressionNode node) {
        if (node instanceof ExpressionBinaryNode) {
            return new ExpressionBinary((ExpressionBinaryNode) node);
        }

        if (node instanceof ExpressionUnaryNode) {
            return new ExpressionUnary((ExpressionUnaryNode) node);
        }

        if (node instanceof ExpressionContentNode) {
            return ExpressionContent.getContent((ExpressionContentNode) node);
        }

        if (node instanceof ExpressionMethodInvocationNode) {
            return new ExpressionMethodInvocation((ExpressionMethodInvocationNode) node);
        }

        if (node instanceof ExpressionClassInstanceCreationNode) {
            return new ExpressionClassInstanceCreation((ExpressionClassInstanceCreationNode) node);
        }

        if (node instanceof ExpressionFieldAccessNode) {
            return new ExpressionFieldAccess((ExpressionFieldAccessNode) node);
        }

        if (node instanceof ExpressionArrayCreationNode) {
            return new ExpressionArrayCreation((ExpressionArrayCreationNode) node);
        }

        if (node instanceof ExpressionArrayAccessNode) {
            return new ExpressionArrayAccess((ExpressionArrayAccessNode) node);
        }

        if (node instanceof ExpressionTypeNode) {
            return new ExpressionType((ExpressionTypeNode) node);
        }


        return null;
    }

    public abstract JoosType getType() throws TypeCheckException;

    public abstract void forwardDeclaration(String fieldname, HashSet<String> initializedName) throws TypeCheckException;

    public abstract void localVarSelfReference(String id) throws UnreachableStatementException;

    public abstract boolean isConstantExpression();


    public boolean isFinal() {
        return isFinal;
    }

    public boolean isLHS() {
        return isLHS;
    }
}
