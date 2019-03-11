package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionUnaryNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Type;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.regex.Pattern;

public class ExpressionUnary extends Expression {
    private Symbol kind;
    private Symbol unaryOperator;
    private Expression targetNode;
    private Type castingType;

    private JoosType castingJoosType;

    public ExpressionUnary(ExpressionUnaryNode node) {
        kind = node.getKind();
        unaryOperator = node.getUnaryOperator();
        targetNode = Expression.convertExpressionNode(node.getTargetNode());
        castingType = node.getCastingTypeNode() == null ? null : new Type(node.getCastingTypeNode());
    }

    public Symbol getUnaryOperator() {
        return unaryOperator;
    }

    public Symbol getKind() {
        return kind;
    }

    public Expression getTargetNode() {
        return targetNode;
    }

    public Type getCastingType() {
        return castingType;
    }

    @Override
    public void addEnv(LocalEnv env) {
        super.addEnv(env);
        targetNode.addEnv(env);
    }

    @Override
    public void validate() throws NamingResolveException {
        if (castingType != null) {
            castingJoosType = getEnv().typeResolve(castingType.getTypeName());
        }
        targetNode.validate();
    }
}
