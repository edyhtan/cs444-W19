package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionArrayCreationNode;
import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.Type;
import Joosc.AsmWriter.AsmWriter;
import Joosc.AsmWriter.Register;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;

import java.util.HashSet;

public class ExpressionArrayCreation extends ExpressionPrimary {
    private Expression sizeExpression;
    private Type arrayType;

    public ExpressionArrayCreation(ExpressionArrayCreationNode node) {
        sizeExpression = Expression.convertExpressionNode(node.getSizeExpression());
        arrayType = new Type(node.getArrayType());
    }

    public Expression getSizeExpression() {
        return sizeExpression;
    }

    public Type getArrayType() {
        return arrayType;
    }

    @Override
    public void addEnv(Env env) {
        super.addEnv(env);
        sizeExpression.addEnv(env);
    }

    @Override
    public Env validate() throws NamingResolveException {
        joosType = getEnv().typeResolve(arrayType.getTypeName());
        sizeExpression.validate();
        return null;
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        JoosType sizeType = sizeExpression.getType();
        if (JoosType.isNumber(sizeType)) {
            if (!(joosType instanceof ArrayType)) {
                if (arrayType.getNames() == null || arrayType.getNames().isEmpty()) {
                    joosType = new ArrayType(joosType);
                } else { // reference
                    joosType = new ArrayType(joosType);
                }
            }
        } else {
            throw new TypeCheckException("Type incompatible: " + sizeType);
        }
        return joosType;
    }

    @Override
    public boolean isConstantExpression() {
        return false;
    }

    public void forwardDeclaration(String fieldname, HashSet<String> initializedName) throws TypeCheckException {
        sizeExpression.forwardDeclaration(fieldname, initializedName);
    }

    @Override
    public void localVarSelfReference(String id) throws UnreachableStatementException {
        sizeExpression.localVarSelfReference(id);
    }

    //Code Gen
    AsmWriter asmWriter;

    @Override
    public void codeGen(int indent) {
        asmWriter.indent(indent++);
        asmWriter.comment("---Array Creation: " + arrayType.getTypeName());
        asmWriter.println();

        asmWriter.indent(indent);
        asmWriter.comment("Size Expression:");
        sizeExpression.addEnv(getEnv());
        sizeExpression.addWriter(asmWriter);
        sizeExpression.codeGen(indent + 1);
        asmWriter.println();

        if (joosType.isPrimitive()) {
            if (joosType.equals("boolean")) {
                asmWriter.indent(indent);
                asmWriter.comment("Boolean Primitive");
                asmWriter.indent(indent);
                asmWriter.mov(Register.ebx, 0);
                asmWriter.indent(indent);
                asmWriter.sub(Register.ebx, 1);
            } else {
                asmWriter.indent(indent);
                asmWriter.comment("Numerical Primitive");
                asmWriter.indent(indent);
                asmWriter.mov(Register.ebx, 0);
            }
        } else {
            asmWriter.indent(indent);
            asmWriter.comment("Class Tag");
            String classTag = joosType.getClassEnv().getTypeDeclr().getClassTagName();
            asmWriter.indent(indent);
            asmWriter.mov(Register.ebx, classTag);
        }
        asmWriter.println();

        asmWriter.extern("__new_array");
        asmWriter.indent(indent);
        asmWriter.mov(Register.edx, "__new_array");
        asmWriter.indent(indent);
        asmWriter.call(Register.edx);

        asmWriter.indent(--indent);
        asmWriter.comment("--- End Array Creation");
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
