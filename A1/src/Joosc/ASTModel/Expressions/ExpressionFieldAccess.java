package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionFieldAccessNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Environment.Env;
import Joosc.Environment.FieldsVarInfo;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

public class ExpressionFieldAccess extends Expression {
    private String fieldIdentifier;
    private Expression fieldParentExpression;

    public int a = 0;

    public ExpressionFieldAccess(ExpressionFieldAccessNode node) {
        fieldIdentifier = node.getFieldIdentifier();
        fieldParentExpression = Expression.convertExpressionNode(node.getFieldParentExpression());
    }

    public String getFieldIdentifier() {
        return fieldIdentifier;
    }

    public Expression getFieldParentExpression() {
        return fieldParentExpression;
    }

    @Override
    public void addEnv(Env env) {
        super.addEnv(env);
        fieldParentExpression.addEnv(env);
    }

    @Override
    public void validate() throws NamingResolveException {
        fieldParentExpression.validate();
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        JoosType fieldParentType = fieldParentExpression.getType();
        if (fieldParentType.getClassEnv().isFieldDeclared(fieldIdentifier)) {
            FieldsVarInfo fieldInfo = fieldParentType.getClassEnv().getFieldInfo(fieldIdentifier);
            joosType = fieldInfo.getTypeInfo().getJoosType();
            if (fieldInfo.getModifiers().contains(Symbol.Protected)) {
                if (!fieldParentType.isA(getEnv().getJoosType()) && !getEnv().getJoosType().isA(fieldParentType)) {
                    throw new TypeCheckException("Name " + fieldIdentifier + " is protected and cannot be accessed");
                }

                if (!fieldParentType.equals(getEnv().getJoosType())) {
                    if (!fieldInfo.getModifiers().contains(Symbol.Static)
                            && !(fieldParentType.isA(getEnv().getJoosType())) && getEnv().isFieldDeclared(fieldIdentifier)) {
                        throw new TypeCheckException("Name " + fieldIdentifier + " is protected and cannot be accessed");
                    }

                    if (fieldParentType.isA(getEnv().getJoosType()) &&
                            fieldParentType.getClassEnv().getDeclaredFieldInfo(fieldIdentifier) != null) {
                        throw new TypeCheckException("Name " + fieldIdentifier + " is protected and cannot be accessed");
                    }
                }
            }
        } else {
            throw new TypeCheckException("Field is not declared: " + fieldIdentifier);
        }
        return joosType;
    }
}
