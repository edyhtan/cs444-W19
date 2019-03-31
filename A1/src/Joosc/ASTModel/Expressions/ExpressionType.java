package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionTypeNode;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.HashSet;

public class ExpressionType extends Expression {
    ArrayList<String> typeName;
    boolean isArrayType;

    ExpressionType(ExpressionTypeNode node) {
        typeName = new ArrayList<>(node.getTypeName());
        isArrayType = node.isArray();
    }

    @Override
    public void addEnv(Env env) {
        super.addEnv(env);
    }

    @Override
    public Env validate() throws NamingResolveException {
        joosType = getEnv().typeResolve(typeName);
        return null;
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        if (isArrayType) {
            joosType = new ArrayType(joosType);
        }
        return joosType;
    }

    @Override
    public boolean isConstantExpression() {
        return false;
    }

    public void forwardDeclaration(String fieldname, HashSet<String> initializedName) throws TypeCheckException {
    }
}
