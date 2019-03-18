package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionUnaryNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Type;
import Joosc.Environment.Env;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

public class ExpressionUnary extends Expression {
    private Symbol kind;
    private Symbol unaryOperator;
    private Expression targetNode;
    private Type castingType;

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
    public void addEnv(Env env) {
        super.addEnv(env);
        targetNode.addEnv(env);
    }

    @Override
    public void validate() throws NamingResolveException {
        if (castingType != null) {
            joosType = getEnv().typeResolve(castingType).getJoosType();
        }
        targetNode.validate();
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        JoosType targetNodeType = targetNode.getType();
        if (joosType != null) { // casting
            if (!(joosType.isA(targetNodeType) || targetNodeType.isA(joosType))) {
                throw new TypeCheckException("Cannot cast " + targetNodeType.getTypeName()
                        + " to " + joosType.getTypeName());
            }
        } else { // unaryExpression
            // minus
            if (unaryOperator.equals(Symbol.Minus) && JoosType.isNumber(targetNodeType)) {
                joosType = targetNodeType;
            } else if (unaryOperator.equals(Symbol.Bang) && targetNodeType.equals("boolean")) {
                joosType = targetNodeType;
            } else {
                throw new TypeCheckException("Type incompatible: " + targetNode.getType());
            }
        }
        return joosType;
    }
}
