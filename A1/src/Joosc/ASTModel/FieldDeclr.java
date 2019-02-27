package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionNode;
import Joosc.ASTBuilding.ASTStructures.FieldDeclrNode;
import Joosc.ASTBuilding.ASTStructures.TypeNode;
import Joosc.ASTBuilding.Constants.Symbol;

import java.util.ArrayList;

public class FieldDeclr implements ClassMemberDeclr {
    private ArrayList<Symbol> modifiers;
    private TypeNode type;
    private String name;
    private ExpressionNode initExpression;
    private String canonicalID;

    public FieldDeclr(FieldDeclrNode node) {
        modifiers = node.getModifiers();
        name = node.getName();
        type = node.getType();
        initExpression = node.getnitExpression();
    }

    @Override
    public void buildCanonicalName(String className) {
        canonicalID = className + DOT + name;
    }
}
