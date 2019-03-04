package Joosc.ASTModel.ClassMember;

import Joosc.ASTBuilding.ASTStructures.FieldDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.ASTModel.ClassMember.ClassMemberDeclr;
import Joosc.ASTModel.Statements.Statement;
import Joosc.ASTModel.Type;
import Joosc.Environment.LocalEnv;
import javafx.util.Pair;

import java.util.ArrayList;

public class FieldDeclr implements ClassMemberDeclr {
    private ArrayList<Symbol> modifiers;
    private Type type;
    private String name;
    private Expression initExpression;
    private ArrayList<String> canonicalID;

    public FieldDeclr(FieldDeclrNode node) {
        modifiers = node.getModifiers();
        name = node.getName();
        type = new Type(node.getType());
        initExpression = Expression.convertExpressionNode(node.getnitExpression());
    }

    @Override
    public void buildCanonicalName(ArrayList<String> className) {
        canonicalID = new ArrayList<>(className);
        canonicalID.add(name);
    }

    @Override
    public void addLocalEnvironment(LocalEnv localEnv) {}

    @Override
    public ArrayList<Pair<Type, String>> getFormalParamList() {
        return null;
    }

    @Override
    public ArrayList<Statement> getBodyBlock() {
        return null;
    }

    @Override
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

    public ArrayList<String> getCanonicalID() {
        return canonicalID;
    }
}
