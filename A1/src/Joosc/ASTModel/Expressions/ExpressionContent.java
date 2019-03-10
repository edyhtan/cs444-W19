package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionContentNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;

public abstract class ExpressionContent extends ExpressionPrimary {
    public static ExpressionContent getContent(ExpressionContentNode node) {
        if (node.kind.equals(Symbol.Name.getSymbolString())) {
            return new Names(node.getName());
        } else if (node.kind.equals(Symbol.This.getSymbolString())) {
            return new This();
        } else {
            return new Literal(node.getLiteral(), node.kind);
        }
    }
}
