package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionArrayCreationNode;
import Joosc.ASTModel.Type;
import Joosc.AsmWriter.AsmWriter;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;

import java.util.HashSet;

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
    public void addEnv(Env env) {
        super.addEnv(env);
        sizeExpression.addEnv(env);
    }

    @Override
    public Env validate() throws NamingResolveException {
        joosType = getEnv().typeResolve(arrayType.getTypeName());
        sizeExpression.validate();
        return null;
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        JoosType sizeType = sizeExpression.getType();
        if (JoosType.isNumber(sizeType)) {
            if (!(joosType instanceof ArrayType)) {
                if (arrayType.getNames() == null || arrayType.getNames().isEmpty()) {
                    joosType = new ArrayType(joosType);
                } else { // reference
                    joosType = new ArrayType(joosType);
                }
            }
        } else {
            throw new TypeCheckException("Type incompatible: " + sizeType);
        }
        return joosType;
    }

    @Override
    public boolean isConstantExpression() {
        return false;
    }

    public void forwardDeclaration(String fieldname, HashSet<String> initializedName) throws TypeCheckException {
        sizeExpression.forwardDeclaration(fieldname, initializedName);
    }

    @Override
    public void localVarSelfReference(String id) throws UnreachableStatementException {
        sizeExpression.localVarSelfReference(id);
    }

    //Code Gen
    AsmWriter asmWriter;

    @Override
    public void codeGen(int indent) {

    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
