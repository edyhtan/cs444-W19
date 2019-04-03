package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionClassInstanceCreationNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.Type;
import Joosc.AsmWriter.AsmWriter;
import Joosc.Environment.ClassEnv;
import Joosc.Environment.Env;
import Joosc.Environment.FieldsVarInfo;
import Joosc.Environment.MethodInfo;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.HashSet;
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
        argList.forEach(x -> x.addEnv(env));
    }

    @Override
    public Env validate() throws NamingResolveException {
        joosType = getEnv().typeResolve(classType.getNames());
        for (Expression arg : argList) {
            arg.validate();
        }
        return null;
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

        if (joosType.getClassEnv().getTypeDeclr() instanceof ClassDeclr
                && joosType.getClassEnv().getTypeDeclr().getModifiers().contains(Symbol.Abstract)) {
            throw new TypeCheckException("Cannot create instance of abstract class: " + joosType.getTypeName());
        }

        if (joosType == null) {
            throw new TypeCheckException("Type Not Found: " + String.join(".", fullname));
        }

        ArrayList<String> argTypeList = new ArrayList<>();
        argTypeList.add(fullname.get(fullname.size() - 1));

        for (Expression arg : argList) {
            argTypeList.add(arg.getType().getQualifiedName());
        }

        MethodInfo matchingCtor = null;
        ClassEnv matchingClass = joosType.getClassEnv();

        String callSignature = String.join(",", argTypeList);
        matchingCtor = matchingClass.getConstructorSignature().getOrDefault(callSignature, null);

        if (matchingCtor == null) {
            throw new TypeCheckException("No matching method constructor: " + argTypeList);
        }

        if (matchingCtor.getModifiers().contains(Symbol.Protected)) {
            if (!joosType.isA(getEnv().getJoosType()) && !getEnv().getJoosType().isA(joosType)) {
                throw new TypeCheckException("Protected Access on constructor " + callSignature);
            }

            if (!joosType.getClassEnv().getPackageDeclr().equals(getEnv().getPackageDeclr())) {
                throw new TypeCheckException("Protected Access on constructor " + callSignature);
            }
        }

        return joosType;
    }

    @Override
    public boolean isConstantExpression() {
        return false;
    }

    public void forwardDeclaration(String fieldname, HashSet<String> initializedName) throws TypeCheckException {
        if (joosType == getEnv().getJoosType()) {
            throw new TypeCheckException("Cannot initialize this instance in initializer");
        }

        for (Expression arg : argList) {
            arg.forwardDeclaration(fieldname, initializedName);
        }
    }

    @Override
    public void localVarSelfReference(String id) throws UnreachableStatementException {
        for (Expression arg : argList) {
            arg.localVarSelfReference(id);
        }
    }

    //Code Gen
    AsmWriter asmWriter;

    @Override
    public void codeGen(int indent) {

    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
