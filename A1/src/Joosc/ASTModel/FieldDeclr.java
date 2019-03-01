package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.FieldDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Expressions.Expression;

import java.util.ArrayList;

public class FieldDeclr implements ClassMemberDeclr {
    private ArrayList<Symbol> modifiers;
    private Type type;
    private String name;
    private Expression initExpression;
    private String canonicalID;

    public FieldDeclr(FieldDeclrNode node) {
        modifiers = node.getModifiers();
        name = node.getName();
        type = new Type(node.getType());
        initExpression = Expression.convertExpressionNode(node.getnitExpression());
    }

    public void buildCanonicalName(String className) {
        canonicalID = className + DOT + name;
    }

    public String getName() {
        return name;
    }

    public Type getType() {
        return type;
    }

    public ArrayList<Symbol> getModifiers() {
        return modifiers;
    }

    public Expression getInitExpression() {
        return initExpression;
    }

    public String getCanonicalID() {
        return canonicalID;
    }
}
