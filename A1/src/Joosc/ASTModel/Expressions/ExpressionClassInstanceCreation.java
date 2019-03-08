package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionClassInstanceCreationNode;
import Joosc.ASTModel.Type;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class ExpressionClassInstanceCreation extends Expression {
    private Type classType;
    private ArrayList<Expression> argList;
    private ArrayList<String> resolvedType;

    public ExpressionClassInstanceCreation(ExpressionClassInstanceCreationNode node) {
        classType = new Type(node.getClassType());
        argList = node.getArgList().stream().map(Expression::convertExpressionNode)
                .collect(Collectors.toCollection(ArrayList::new));
    }

    public Type getClassType() {
        return classType;
    }

    public ArrayList<Expression> getArgList() {
        return argList;
    }

    @Override
    public void addEnv(LocalEnv env) {
        super.addEnv(env);
        argList.forEach(x->x.addEnv(env));
    }

    @Override
    public void validate() throws NamingResolveException {
        // resolve Type
//        System.err.println(String.join(".", classType.getNames()));
        resolvedType = getEnv().typeResolve(classType.getNames());

        for (Expression arg: argList) {
            arg.validate();
        }
    }
}
