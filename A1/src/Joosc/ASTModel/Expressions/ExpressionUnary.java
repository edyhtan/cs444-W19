package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionUnaryNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Type;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

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

    @Override
    public JoosType getType() throws TypeCheckException {
        JoosType targetNodeType = targetNode.getType();
        if (kind.equals(Symbol.CastExpression)) {
            // review: downcast run-time check? cast an interface?
            if (castingJoosType.isA(targetNodeType) || targetNodeType.isA(castingJoosType)) {
                joosType = targetNodeType;
            } else {
                throw new TypeCheckException("Cannot cast " + targetNodeType.getTypeName()
                        + " to " + castingJoosType.getTypeName());
            }
        } else { // unaryExpression
            // minus
            if (unaryOperator.equals(Symbol.Minus) && JoosType.isNumber(targetNodeType)) {
                joosType = targetNodeType;
            } else {
                throw new TypeCheckException("Cannot subtract a non-numeric type variable.");
            }
        }
        // negate
        if (unaryOperator.equals(Symbol.Bang) && targetNodeType.equals("boolean")) {
            joosType = targetNodeType;
        } else {
            throw new TypeCheckException("Cannot negate a non-boolean type variable");
        }
        return joosType;
    }
}
