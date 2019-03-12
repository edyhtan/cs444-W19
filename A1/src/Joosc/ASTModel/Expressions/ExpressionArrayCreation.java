package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionArrayCreationNode;
import Joosc.ASTModel.Type;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;

public class ExpressionArrayCreation extends ExpressionPrimary {
    private Expression sizeExpression;
    private Type arrayType;

    public ExpressionArrayCreation(ExpressionArrayCreationNode node) {
        sizeExpression = Expression.convertExpressionNode(node.getSizeExpression());
        arrayType = new Type(node.getArrayType());
    }

    public Expression getSizeExpression() {
        return sizeExpression;
    }

    public Type getArrayType() {
        return arrayType;
    }

    @Override
    public void addEnv(LocalEnv env) {
        super.addEnv(env);
        sizeExpression.addEnv(env);
    }

    @Override
    public void validate() throws NamingResolveException {

        joosType = getEnv().typeResolve(arrayType.getTypeName());
        sizeExpression.validate();
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        JoosType sizeType = sizeExpression.getType();
        if(JoosType.isNumber(sizeType)) {
            // primitive
            if(arrayType.getNames().isEmpty() || arrayType.getNames() == null) {
                joosType = new ArrayType(JoosType.getJoosType(arrayType.getKind().getSymbolString()));
            } else { // reference
                joosType = new ArrayType(JoosType.getJoosType(arrayType.getNames()));
            }
        } else {
            throw new TypeCheckException("Type incompatible: " + sizeType);
        }
        return joosType;
    }
}
