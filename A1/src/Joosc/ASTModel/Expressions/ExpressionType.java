package Joosc.ASTModel.Expressions;


import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionTypeNode;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

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

    @Override
    public JoosType getType() throws TypeCheckException {
        joosType = JoosType.getJoosType(typeName);
        return joosType;
    }
}
