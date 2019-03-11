package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionArrayAccessNode;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;

public class ExpressionArrayAccess extends ExpressionPrimary {

    private ArrayList<String> referenceName;
    private Expression referenceExpression;
    private Expression indexExpression;

    public ExpressionArrayAccess(ExpressionArrayAccessNode node) {
        referenceName = node.getReferenceName();
        referenceExpression = Expression.convertExpressionNode(node.getReferenceExpression());
        indexExpression = Expression.convertExpressionNode(node.getIndexExpression());
    }

    public ArrayList<String> getReferenceName() {
        return referenceName;
    }

    public Expression getIndexExpression() {
        return indexExpression;
    }

    public Expression getReferenceExpression() {
        return referenceExpression;
    }

    @Override
    public void addEnv(LocalEnv env) {
        super.addEnv(env);
        if (referenceExpression != null)
            referenceExpression.addEnv(env);
        indexExpression.addEnv(env);
    }

    @Override
    public void validate() throws NamingResolveException {
        if (referenceExpression != null)
            referenceExpression.validate();
        indexExpression.validate();
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        JoosType indexType = indexExpression.getType();
        // TODO: wait for disambiguity && double check here
        if (!(referenceExpression instanceof ExpressionType
                && ((ExpressionType) referenceExpression).isArrayType)
                && JoosType.getJoosType(referenceName) instanceof ArrayType) {
            throw new TypeCheckException("Type incompatible for array access.");
        }
        if (JoosType.isNumber(indexType)) {
            if(referenceName != null) joosType = JoosType.getJoosType(referenceName);
            else joosType = referenceExpression.getType();
        } else {
            throw new TypeCheckException("Type incompatible for array index: " + indexType.getTypeName());
        }

        return joosType;
    }
}
