package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionMethodInvocationNode;
import Joosc.Environment.ClassEnv;
import Joosc.Environment.LocalEnv;
import Joosc.Environment.MethodInfo;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
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
        argList.forEach(x -> x.addEnv(env));
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

    public String getMethodSimpleName() {
        if (methodName == null) {
            return methodIdentifier;
        } else {
            return methodName.get(methodName.size() - 1);
        }
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        JoosType methodType = JoosType.getJoosType(methodName);

        // TODO: ClassEnv and Name coming from the void
        ClassEnv classEnv = (ClassEnv) new Object();
        String name = "Foo";
        // ^^^ These are bad!

        ArrayList<JoosType> argTypeList = new ArrayList<>();
        for (Expression arg : argList) {
            argTypeList.add(arg.getType());
        }

        MethodInfo matchingMethod = null;
        for (Map.Entry<String, MethodInfo> kvp : classEnv._getFullMethodSignature().entrySet()) {
            if (this.getMethodSimpleName().equals(kvp.getValue().getMethodSimpleName())
            &&  argTypeList.size() == kvp.getValue().getParamTypeList().size()) {
                // TODO: Type checking for each param in paramList
                // TODO: Check duplicate matching Method
                matchingMethod = kvp.getValue();
                break;
            }
        }

        return matchingMethod.getReturnType().getJoosType();
    }
}
