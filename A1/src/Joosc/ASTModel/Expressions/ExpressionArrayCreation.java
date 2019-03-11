package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionArrayCreationNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Type;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;

public class ExpressionArrayCreation extends ExpressionPrimary {
    private Expression sizeExpression;
    private Type arrayType;
    private ArrayList<String> resolvedType;

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
        if (arrayType.getArrayKind() == Symbol.ClassOrInterfaceType) {
            resolvedType = getEnv().typeResolve(arrayType.getNames());
        }
        sizeExpression.validate();
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        return joosType;
    }
}
