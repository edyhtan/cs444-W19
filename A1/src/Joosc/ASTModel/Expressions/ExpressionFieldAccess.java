package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionFieldAccessNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassMember.MethodDeclr;
import Joosc.AsmWriter.AsmWriter;
import Joosc.AsmWriter.Register;
import Joosc.Environment.Env;
import Joosc.Environment.FieldsVarInfo;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.HashSet;

public class ExpressionFieldAccess extends Expression implements LeftValue {
    private String fieldIdentifier;
    private Expression fieldParentExpression;

    JoosType parentType;

    public int a = 0;

    public ExpressionFieldAccess(ExpressionFieldAccessNode node) {
        fieldIdentifier = node.getFieldIdentifier();
        fieldParentExpression = Expression.convertExpressionNode(node.getFieldParentExpression());
    }

    public String getFieldIdentifier() {
        return fieldIdentifier;
    }

    public Expression getFieldParentExpression() {
        return fieldParentExpression;
    }

    @Override
    public void addEnv(Env env) {
        super.addEnv(env);
        fieldParentExpression.addEnv(env);
    }

    @Override
    public Env validate() throws NamingResolveException {
        fieldParentExpression.validate();
        return null;
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        JoosType fieldParentType = fieldParentExpression.getType();
        parentType = fieldParentType;
        if (fieldParentType.getClassEnv().isFieldDeclared(fieldIdentifier)) {
            FieldsVarInfo fieldInfo = fieldParentType.getClassEnv().getFieldInfo(fieldIdentifier);
            joosType = fieldInfo.getTypeInfo().getJoosType();
            if (fieldInfo.getModifiers().contains(Symbol.Protected)) {
                if (!fieldParentType.isA(getEnv().getJoosType()) && !getEnv().getJoosType().isA(fieldParentType)) {
                    throw new TypeCheckException("Name " + fieldIdentifier + " is protected and cannot be accessed");
                }

                if (!fieldParentType.equals(getEnv().getJoosType())) {
                    if (!fieldInfo.getModifiers().contains(Symbol.Static)
                            && !(fieldParentType.isA(getEnv().getJoosType())) && getEnv().isFieldDeclared(fieldIdentifier)) {
                        throw new TypeCheckException("Name " + fieldIdentifier + " is protected and cannot be accessed");
                    }

                    if (fieldParentType.isA(getEnv().getJoosType()) &&
                            fieldParentType.getClassEnv().getDeclaredFieldInfo(fieldIdentifier) != null) {
                        throw new TypeCheckException("Name " + fieldIdentifier + " is protected and cannot be accessed");
                    }
                }
            }
            if (getEnv().getCurrentMethod() instanceof MethodDeclr) {
                MethodDeclr currentMethod = (MethodDeclr) getEnv().getCurrentMethod();
                if (currentMethod.getModifiers().contains(Symbol.Static)) {
                    if (fieldParentExpression instanceof This) {
                        throw new TypeCheckException("A This expression must not occur in a static context.");
                    }
                }
            }
        } else {
            throw new TypeCheckException("Field is not declared: " + fieldIdentifier);
        }
        return joosType;
    }

    public boolean isConstantExpression() {
        return false;
    }

    @Override
    public void forwardDeclaration(String fieldname, HashSet<String> initializedName) throws TypeCheckException {
        if (fieldParentExpression != null) {
            fieldParentExpression.forwardDeclaration(fieldname, initializedName);
        }
    }

    @Override
    public void localVarSelfReference(String id) throws UnreachableStatementException {
        if (fieldParentExpression != null) {
            fieldParentExpression.localVarSelfReference(id);
        }
    }

    //Code Gen
    AsmWriter asmWriter;

    @Override
    public void codeGen(int indent) {
        fieldParentExpression.addEnv(getEnv());
        int offset;
        if (parentType instanceof ArrayType) {
            offset = 8;
        } else {
            offset = parentType.getClassEnv().symbolTable.get(parentType.getQualifiedName() + "::" + fieldIdentifier).getOffset();
        }

        asmWriter.indent(indent);
        asmWriter.comment("field access");
        fieldParentExpression.addWriter(asmWriter);
        fieldParentExpression.codeGen(indent);
        asmWriter.indent(indent);
        asmWriter.movFromAddr(Register.eax, Register.eax + "+" + offset);

    }

    @Override
    public void getCodeAddr(int indent) {
        fieldParentExpression.addEnv(getEnv());
        int offset = parentType.getClassEnv().symbolTable.get(parentType.getQualifiedName()+"::"+fieldIdentifier).getOffset();

        asmWriter.indent(indent);
        asmWriter.comment("field access");
        fieldParentExpression.addWriter(asmWriter);
        fieldParentExpression.codeGen(indent);
        asmWriter.indent(indent);
        asmWriter.add(Register.eax, offset);
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
