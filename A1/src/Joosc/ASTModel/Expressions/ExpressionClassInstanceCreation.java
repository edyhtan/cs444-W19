package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionClassInstanceCreationNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.Type;
import Joosc.Environment.ClassEnv;
import Joosc.Environment.Env;
import Joosc.Environment.FieldsVarInfo;
import Joosc.Environment.MethodInfo;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.Map;
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

        if(joosType.getClassEnv().getTypeDeclr() instanceof ClassDeclr
                && joosType.getClassEnv().getTypeDeclr().getModifiers().contains(Symbol.Abstract)) {
            throw new TypeCheckException("Cannot create instance of abstract class: " + joosType.getTypeName());
        }

        if (joosType == null) {
            throw new TypeCheckException("Type Not Found: " + String.join(".", fullname));
        }

        ArrayList<JoosType> argTypeList = new ArrayList<>();
        for (Expression arg : argList) {
            argTypeList.add(arg.getType());
        }

        MethodInfo matchingCtor = null;
        ClassEnv matchingClass = joosType.getClassEnv();

        String simpleName = fullname.get(fullname.size()-1);

        for (Map.Entry<String, MethodInfo> kvp : matchingClass.getConstructorSignature().entrySet()) {
            if (simpleName.equals(kvp.getValue().getMethodSimpleName())
                    &&  argTypeList.size() == kvp.getValue().getParamTypeList().size()) {

                ArrayList<FieldsVarInfo> candidateParamTypeList = kvp.getValue().getParamTypeList();
                boolean valid = true;

                for (int i = 0; i < argTypeList.size(); ++i) {
                    valid = argTypeList.get(i).equals(candidateParamTypeList.get(i).getTypeInfo().getJoosType());
                    if (!valid) {
                        break;
                    }
                }

                if (!valid) {
                    continue;
                } else if (matchingCtor != null){
                    throw new TypeCheckException("Ambiguous constructor signature:" + simpleName);
                } else {
                    matchingCtor = kvp.getValue();
                }
            }
        }

        if (matchingCtor == null) {
            throw new TypeCheckException("No matching method constructor: " + simpleName);
        }

        return joosType;
    }
}
