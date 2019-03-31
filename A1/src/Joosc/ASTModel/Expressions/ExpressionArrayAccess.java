package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionArrayAccessNode;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;
import Joosc.util.Tri;

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
    public void addEnv(Env env) {
        super.addEnv(env);
        if (referenceExpression != null)
            referenceExpression.addEnv(env);
        indexExpression.addEnv(env);
    }

    @Override
    public Env validate() throws NamingResolveException {
        if (referenceExpression != null)
            referenceExpression.validate();
        indexExpression.validate();

        return null;
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        JoosType indexType = indexExpression.getType();

        if (!JoosType.isNumber(indexType)) {
            throw new TypeCheckException("Type incompatible for array index: " + indexType.getTypeName());
        }

        if (referenceExpression == null) {
            boolean isDefaultPkg = false;
            if(getEnv().getCurrentClass().getClassEnv().getPackageDeclr() == null
                    || getEnv().getCurrentClass().getClassEnv().getPackageDeclr().isEmpty()) {
                isDefaultPkg = true;
            }
            Tri<Integer, Env, String> nameInfo = Names.resolveAmbiguity(getEnv(), referenceName, isDefaultPkg);

            if ((nameInfo.get1() & Names.isStatic) != 0) {
                joosType = nameInfo.get2().getStaticFieldInfo(nameInfo.get3()).getTypeInfo().getJoosType();
            }
            if ((nameInfo.get1() & Names.isField) != 0) {
                joosType = nameInfo.get2().getFieldInfo(nameInfo.get3()).getTypeInfo().getJoosType();
            }
            if ((nameInfo.get1() & Names.isLocal) != 0) {
                joosType = nameInfo.get2().getVarInfo(nameInfo.get3()).getTypeInfo().getJoosType();
            }
            if (joosType == null) {
                throw new TypeCheckException("Name " + String.join(".", referenceName) + " not found.");
            }
        } else {
            joosType = referenceExpression.getType();
        }
        if (!(joosType instanceof ArrayType)) {
            throw new TypeCheckException("Unmatched Type " + joosType.getTypeName() + " with [].");
        }
        return ((ArrayType)joosType).getJoosType();
    }
}
