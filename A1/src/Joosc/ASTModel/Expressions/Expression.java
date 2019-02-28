package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ClassInstanceCreationNode;
import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionNode;
import Joosc.ASTModel.AST;

public abstract class Expression extends AST {

    public static Expression convertExpressionNode(ExpressionNode node) {
        //TODO
        if (node == null) return null;
        return new ClassInstanceCreation((ClassInstanceCreationNode) node);
    }
}
