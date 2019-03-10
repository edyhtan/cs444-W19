package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionMethodInvocationNode;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class ExpressionMethodInvocation extends ExpressionPrimary {
    private ArrayList<String> methodName;
    private ArrayList<Expression> argList;
    private Expression methodParentExpression;
    private String methodIdentifier;

    public ExpressionMethodInvocation(ExpressionMethodInvocationNode node) {
        methodName = node.getMethodName();
        argList = node.getArgList().stream().map(Expression::convertExpressionNode)
                .collect(Collectors.toCollection(ArrayList::new));
        methodParentExpression = Expression.convertExpressionNode(node.getMethodParentExpression());
        methodIdentifier = node.getMethodIdentifier();
    }

    public String getMethodIdentifier() {
        return methodIdentifier;
    }

    public ArrayList<String> getMethodName() {
        return methodName;
    }

    public ArrayList<Expression> getArgList() {
        return argList;
    }

    public Expression getMethodParentExpression() {
        return methodParentExpression;
    }

    @Override
    public void addEnv(LocalEnv env) {
        super.addEnv(env);
        if (methodParentExpression != null) {
            methodParentExpression.addEnv(env);
        }
        argList.forEach(x-> x.addEnv(env));
    }

    @Override
    public void validate() throws NamingResolveException {
        if (methodParentExpression != null) {
            methodParentExpression.validate();
        }

        for (Expression expression : argList) {
            expression.validate();
        }
    }
}
