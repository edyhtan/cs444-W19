package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionFieldAccessNode;
import Joosc.Environment.Env;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

public class ExpressionFieldAccess extends Expression {
    private String fieldIdentifier;
    private Expression fieldParentExpression;

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
            if (!fieldParentType.getClassEnv().isStaticField(fieldIdentifier)) {
                joosType = fieldParentType.getClassEnv().getFieldTypeInfo(fieldIdentifier).getJoosType();
            } else {
                throw new TypeCheckException("Cannot access static field: " + fieldIdentifier);
            }
        } else {
            throw new TypeCheckException("Field is not declared: " + fieldIdentifier);
        }
        return joosType;
    }
}
