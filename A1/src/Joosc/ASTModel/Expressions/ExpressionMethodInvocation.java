package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionMethodInvocationNode;
import Joosc.Environment.ClassEnv;
import Joosc.Environment.Env;
import Joosc.Environment.FieldsVarInfo;
import Joosc.Environment.MethodInfo;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;
import Joosc.util.Tri;

import java.util.ArrayList;
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
    public void addEnv(Env env) {
        super.addEnv(env);
        if (methodParentExpression != null) {
            methodParentExpression.addEnv(env);
        }
        argList.forEach(x -> x.addEnv(env));
    }

    @Override
    public Env validate() throws NamingResolveException {
        if (methodParentExpression != null) {
            methodParentExpression.validate();
        }

        for (Expression expression : argList) {
            expression.validate();
        }
        return null;
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
        Env env;
        String simpleName;

        if (methodName == null) {
            if (methodParentExpression.getType().isPrimitive()) {
                throw new TypeCheckException("Cannot invoke methods on primitive types");
            }
            env = methodParentExpression.getType().getClassEnv();
            simpleName = methodIdentifier;
        } else {
            Tri<Integer, Env, String> tri = Names.resolveAmbiguity(getEnv(), methodName);
            env = tri.get2();
            simpleName = methodName.get(methodName.size()-1);
        }

        ArrayList<String> argTypeList = new ArrayList<>();
        argTypeList.add(simpleName);
        for (Expression arg : argList) {
            argTypeList.add(arg.getType().getQualifiedName());
        }

        MethodInfo matchingMethod = null;
        String callSignature = String.join(",", argTypeList);
        matchingMethod = env.getAllMethodSignature().getOrDefault(callSignature, null);

        if (matchingMethod == null) {
            throw new TypeCheckException("No matching method signature: " + callSignature);
        }

        return matchingMethod.getReturnType().getJoosType();
    }
}
