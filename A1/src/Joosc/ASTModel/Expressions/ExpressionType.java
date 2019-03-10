package Joosc.ASTModel.Expressions;


import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionTypeNode;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;

public class ExpressionType extends Expression {

    ArrayList<String> typeName;
    boolean isArrayType;

    ExpressionType(ExpressionTypeNode node) {
        typeName = new ArrayList<>(node.getTypeName());
        isArrayType = node.isArray();
    }

    @Override
    public void addEnv(LocalEnv env) {
        super.addEnv(env);
    }

    @Override
    public void validate() throws NamingResolveException {

    }
}
