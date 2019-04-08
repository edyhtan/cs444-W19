package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionUnaryNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassMember.MethodDeclr;
import Joosc.ASTModel.Type;
import Joosc.AsmWriter.AsmWriter;
import Joosc.AsmWriter.Register;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;

import java.lang.reflect.Array;
import java.util.HashSet;

public class ExpressionUnary extends Expression implements ConstantExpression {
    private Symbol kind;
    private Symbol unaryOperator;
    private Expression targetNode;
    private Type castingType;

    // Literal representation of value and type of constant expression
    private ConstantLiteral constantLiteral = null;

    public ExpressionUnary(ExpressionUnaryNode node) {
        kind = node.getKind();
        unaryOperator = node.getUnaryOperator();
        targetNode = Expression.convertExpressionNode(node.getTargetNode());
        castingType = node.getCastingTypeNode() == null ? null : new Type(node.getCastingTypeNode());

    }

    public Symbol getUnaryOperator() {
        return unaryOperator;
    }

    public Symbol getKind() {
        return kind;
    }

    public Expression getTargetNode() {
        return targetNode;
    }

    public Type getCastingType() {
        return castingType;
    }

    @Override
    public void addEnv(Env env) {
        super.addEnv(env);
        targetNode.addEnv(env);
    }

    @Override
    public Env validate() throws NamingResolveException {
        if (castingType != null) {
            joosType = getEnv().typeResolve(castingType).getJoosType();
        }
        targetNode.validate();
        return null;
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        targetNode.setParentIsStatic(this.parentIsStatic);

        JoosType targetNodeType = targetNode.getType();
        if (castingType != null) { // casting
            if (!(joosType.isA(targetNodeType) || targetNodeType.isA(joosType))) {
                throw new TypeCheckException("Cannot cast " + targetNodeType.getTypeName()
                        + " to " + joosType.getTypeName());
            }
        } else { // unaryExpression
            // minus
            if (unaryOperator.equals(Symbol.Minus) && JoosType.isNumber(targetNodeType)) {
                joosType = targetNodeType;
            } else if (unaryOperator.equals(Symbol.Bang) && targetNodeType.equals("boolean")) {
                joosType = targetNodeType;
            } else {
                throw new TypeCheckException("Type incompatible: " + targetNode.getType());
            }
        }
        return joosType;
    }

    @Override
    public boolean isConstantExpression() {
        // Type checked before static analysis, all should be valid
//        if (constantLiteral != null) {
//            return true;
//        }
        if (targetNode.isConstantExpression() && unaryOperator != null) {
            ConstantLiteral targetConstant = ((ConstantExpression) targetNode).evaluateConstant();
            switch (unaryOperator) {
                case Plus:
                    constantLiteral = targetConstant;
                    return true;
                case Minus:
                    constantLiteral = new ConstantLiteral((int) -targetConstant.toLong(), targetConstant.type);
                    return true;
                case Bang:
                    constantLiteral = new ConstantLiteral(!targetConstant.toBoolean(), targetConstant.type);
                    return true;
            }
        }
        if (targetNode.isConstantExpression() && castingType != null) {
            ConstantLiteral targetConstant = ((ConstantExpression) targetNode).evaluateConstant();
            if (joosType.isPrimitive()) {
                long targetNum = Long.valueOf(targetConstant.literal);
                String result = targetConstant.literal;
                if (joosType.getTypeName().get(0).equals("int")) {
                    result = String.valueOf((int) targetNum);
                }
                if (joosType.getTypeName().get(0).equals("char")) {
                    result = String.valueOf((int)(char) targetNum);
                } else if (joosType.getTypeName().get(0).equals("short")) {
                    result = String.valueOf((short) targetNum);
                } else if (joosType.getTypeName().get(0).equals("byte")) {
                    result = String.valueOf((byte) targetNum);
                }
                constantLiteral = new ConstantLiteral(result, joosType);
                return true;
            }
        }
        return false;
    }


    @Override
    public ConstantLiteral evaluateConstant() {
        return constantLiteral;
    }

    @Override
    public void forwardDeclaration(String fieldname, HashSet<String> initializedName) throws TypeCheckException {
        targetNode.forwardDeclaration(fieldname, initializedName);
    }

    @Override
    public void localVarSelfReference(String id) throws UnreachableStatementException {
        targetNode.localVarSelfReference(id);
    }

    //Code Gen
    AsmWriter asmWriter;
    int offset;

    @Override
    public void codeGen(int indent) {
        targetNode.addEnv(getEnv());
        targetNode.addWriter(asmWriter);

        if (castingType != null) { // casting
            offset = MethodDeclr.PER_METHOD_COUNT;
            MethodDeclr.PER_METHOD_COUNT++;
//            System.out.println(joosType.getTypeName() + " " + (joosType instanceof ArrayType));
            int column;
            if(!(joosType instanceof ArrayType)) {
                column = AsmWriter.parentMatrix.indexOf(joosType);
            } else {
                column = AsmWriter.parentMatrix.indexOf(((ArrayType) joosType).getJoosType());
            }

            if (!joosType.isPrimitive()) {
                asmWriter.indent(indent);
                asmWriter.comment("casting");
                asmWriter.indent(indent);
                targetNode.codeGen(indent);

                // Skip casting if target is null
                asmWriter.indent(indent);
                asmWriter.comment("null check");
                asmWriter.indent(indent);
                asmWriter.cmp(Register.eax, "0");
                asmWriter.indent(indent);
                asmWriter.je(".cast_end" + offset);

                asmWriter.indent(indent);
                asmWriter.push(Register.eax);
                asmWriter.indent(indent);
                // mov to class tag
                asmWriter.movFromAddr(Register.eax, Register.eax);
                asmWriter.indent(indent);
                // parent matrix
                String addr = String.join("+", Register.eax.toString(), "4");
                asmWriter.movFromAddr(Register.eax, addr);
                asmWriter.indent(indent);
                asmWriter.shr(Register.eax, column);
                asmWriter.indent(indent);
                asmWriter.and(Register.eax, "0x1");
                asmWriter.indent(indent);
                asmWriter.cmp(Register.eax, "0");
                asmWriter.indent(indent);
                asmWriter.extern("__exception");
                asmWriter.je("__exception");

                asmWriter.indent(indent);
                asmWriter.label(".cast_end" + offset);
                asmWriter.indent(indent+1);
                asmWriter.pop(Register.eax);
            } else { // casting primitive types
                if (isConstantExpression()) {
                    // compute at compile time and put value directly to eax
                    asmWriter.indent(indent);
                    asmWriter.comment("constant primitive casting to " + joosType.getTypeName());
                    asmWriter.indent(indent);
                    asmWriter.mov(Register.eax, this.evaluateConstant().literal);
                } else {
                    // compute at run-time, get lower bits by eax & 0xff or eax & 0xffff
                    asmWriter.indent(indent);
                    asmWriter.comment("primitive run-time casting to " + joosType.getTypeName());
                    asmWriter.indent(indent);
                    targetNode.codeGen(indent);
                    asmWriter.indent(indent);
                    if (joosType.getTypeName().get(0).equals("short") || joosType.getTypeName().get(0).equals("char")) {
                        asmWriter.and(Register.eax, "0xffff");
                    } else if (joosType.getTypeName().get(0).equals("byte")) {
                        asmWriter.and(Register.eax, "0xff");
                    }
                }
            }

        } else { // unaryExpression
            // TODO: check negation of a number!!!
            if (unaryOperator.equals(Symbol.Minus)) {
                asmWriter.indent(indent);
                asmWriter.comment("Unary number negation");
                targetNode.codeGen(indent);
                asmWriter.indent(indent);
                asmWriter.mov(Register.ebx, 0);
                asmWriter.indent(indent);
                asmWriter.sub(Register.ebx, Register.eax);
                asmWriter.indent(indent);
                asmWriter.mov(Register.eax, Register.ebx);
            }
            if (unaryOperator.equals(Symbol.Bang)) {
                asmWriter.indent(indent);
                asmWriter.comment("Unary boolean negation");
                targetNode.codeGen(indent);
                asmWriter.indent(indent);
                asmWriter.mov(Register.ebx, 1);
                asmWriter.indent(indent);
                asmWriter.sub(Register.ebx, Register.eax);
                asmWriter.indent(indent);
                asmWriter.mov(Register.eax, Register.ebx);
            }
        }
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
