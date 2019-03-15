package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionClassInstanceCreationNode;
import Joosc.ASTModel.Type;
import Joosc.Environment.Env;
import Joosc.Environment.GlobalEnv;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class ExpressionClassInstanceCreation extends Expression {
    private Type classType;
    private ArrayList<Expression> argList;

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
    public void addEnv(Env env) {
        super.addEnv(env);
        argList.forEach(x->x.addEnv(env));
    }

    @Override
    public void validate() throws NamingResolveException {
        joosType = getEnv().typeResolve(classType.getNames());
        for (Expression arg: argList) {
            arg.validate();
        }
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        ArrayList<String> fullname = classType.getNames();

        if (fullname.size() == 1) {
            if (getEnv() == null) {
                System.err.println(10);
            }
            joosType = getEnv().findResolvedType(fullname.get(0));
        } else {
            joosType = JoosType.getJoosType(fullname);
        }

        if (joosType == null) {
            throw new TypeCheckException("Type Not Found: " + String.join(".", fullname));
        }

        return joosType;
    }
}
