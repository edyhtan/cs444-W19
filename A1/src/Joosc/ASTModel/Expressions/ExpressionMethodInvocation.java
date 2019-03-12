package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionMethodInvocationNode;
import Joosc.Environment.*;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;
import Joosc.util.Tri;

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
        ClassEnv classEnv;

        if (methodName == null) {
            classEnv = methodParentExpression.getType().getClassEnv();
        } else {
            Tri<Integer, Env, String> tri = Names.resolveAmbiguity(getEnv(), methodName);
            classEnv = (ClassEnv) tri.get2();
        }

        ArrayList<JoosType> argTypeList = new ArrayList<>();
        for (Expression arg : argList) {
            argTypeList.add(arg.getType());
        }

        MethodInfo matchingMethod = null;
        for (Map.Entry<String, MethodInfo> kvp : classEnv._getFullMethodSignature().entrySet()) {
            if (this.getMethodSimpleName().equals(kvp.getValue().getMethodSimpleName())
                &&  argTypeList.size() == kvp.getValue().getParamTypeList().size()) {

                ArrayList<FieldsVarInfo> candidateParamTypeList = kvp.getValue().getParamTypeList();
                boolean valid = true;

                for (int i = 0; i < argTypeList.size(); i += 1) {
                    valid = argTypeList.get(i).isA(candidateParamTypeList.get(i).getTypeInfo().getJoosType());
                    if (!valid) {
                        break;
                    }
                }

                if (!valid) {
                    continue;
                } else if (matchingMethod != null){
                    throw new TypeCheckException("Ambiguous method signature:" + this.getMethodSimpleName());
                } else {
                    matchingMethod = kvp.getValue();
                }
            }
        }

        return matchingMethod.getReturnType().getJoosType();
    }
}
