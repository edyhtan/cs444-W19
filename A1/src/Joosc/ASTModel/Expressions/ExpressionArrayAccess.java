package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionArrayAccessNode;
import Joosc.AsmWriter.AsmWriter;
import Joosc.AsmWriter.Register;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;
import Joosc.util.Tri;

import java.util.ArrayList;
import java.util.HashSet;

public class ExpressionArrayAccess extends ExpressionPrimary implements LeftValue {

    private ArrayList<String> referenceName;
    private Expression referenceExpression;
    private Expression indexExpression;
    private boolean isStatic = false;

    public ExpressionArrayAccess(ExpressionArrayAccessNode node) {
        referenceName = node.getReferenceName();
        referenceExpression = Expression.convertExpressionNode(node.getReferenceExpression());
        indexExpression = Expression.convertExpressionNode(node.getIndexExpression());
    }

    public ArrayList<String> getReferenceName() {
        return referenceName;
    }

    public Expression getIndexExpression() {
        return indexExpression;
    }

    public Expression getReferenceExpression() {
        return referenceExpression;
    }

    @Override
    public void addEnv(Env env) {
        super.addEnv(env);
        if (referenceExpression != null)
            referenceExpression.addEnv(env);
        indexExpression.addEnv(env);
    }

    @Override
    public Env validate() throws NamingResolveException {
        if (referenceExpression != null)
            referenceExpression.validate();
        indexExpression.validate();

        return null;
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        JoosType indexType = indexExpression.getType();

        if (!JoosType.isNumber(indexType)) {
            throw new TypeCheckException("Type incompatible for array index: " + indexType.getTypeName());
        }

        if (referenceExpression == null) {
            boolean isDefaultPkg = false;
            if (getEnv().getCurrentClass().getClassEnv().getPackageDeclr() == null
                    || getEnv().getCurrentClass().getClassEnv().getPackageDeclr().isEmpty()) {
                isDefaultPkg = true;
            }
            Tri<Integer, Env, String> nameInfo = Names.resolveAmbiguity(getEnv(), referenceName, isDefaultPkg);

            if ((nameInfo.get1() & Names.isStatic) != 0) {
                isStatic = true;
                joosType = nameInfo.get2().getStaticFieldInfo(nameInfo.get3()).getTypeInfo().getJoosType();
            }
            if ((nameInfo.get1() & Names.isField) != 0) {
                joosType = nameInfo.get2().getFieldInfo(nameInfo.get3()).getTypeInfo().getJoosType();
            }
            if ((nameInfo.get1() & Names.isLocal) != 0) {
                joosType = nameInfo.get2().getVarInfo(nameInfo.get3()).getTypeInfo().getJoosType();
            }
            if (joosType == null) {
                throw new TypeCheckException("Name " + String.join(".", referenceName) + " not found.");
            }
        } else {
            joosType = referenceExpression.getType();
        }
        if (!(joosType instanceof ArrayType)) {
            throw new TypeCheckException("Unmatched Type " + joosType.getTypeName() + " with [].");
        }
        return ((ArrayType) joosType).getJoosType();
    }

    @Override
    public boolean isConstantExpression() {
        return false;
    }

    @Override
    public void forwardDeclaration(String fieldname, HashSet<String> initializedName) throws TypeCheckException {
        if (!isLHS) {
            if (referenceExpression != null) {
                referenceExpression.forwardDeclaration(fieldname, initializedName);
            } else if (!isStatic && (referenceName.get(0).equals(fieldname) || !initializedName.contains(referenceName.get(0)))) {
                throw new TypeCheckException("field " + fieldname + " cannot be forward referenced");
            }
        }
        indexExpression.forwardDeclaration(fieldname, initializedName);
    }

    @Override
    public void localVarSelfReference(String id) throws UnreachableStatementException {
        if (referenceExpression != null) {
            referenceExpression.localVarSelfReference(id);
        } else if (!isStatic && (referenceName.get(0).equals(id))) {
            throw new UnreachableStatementException("local var " + id + " cannot be forward referenced");
        }
    }

    //Code Gen
    AsmWriter asmWriter;

    @Override
    public void codeGen(int indent) {
        getCodeAddr(indent);
        asmWriter.indent(indent);
        asmWriter.comment("Dereference array addr to value");
        asmWriter.indent(indent);
        asmWriter.movFromAddr(Register.eax, Register.eax);
    }

    @Override
    public void getCodeAddr(int indent) {
        asmWriter.indent(indent);
        asmWriter.comment("---Array Access get Addr:");
        indent++;

        asmWriter.startParagraph(indent,"Get array instance:");
        if (referenceName != null) {
            Names arrName = new Names(referenceName);
            arrName.addEnv(getEnv());
            arrName.addWriter(asmWriter);
            arrName.codeGen(indent + 1);
        } else {
            referenceExpression.addEnv(getEnv());
            referenceExpression.addWriter(asmWriter);
            referenceExpression.codeGen(indent + 1);
        }
        asmWriter.nullCheck(indent);
        asmWriter.indent(indent);
        asmWriter.comment("Push array instance addr");
        asmWriter.indent(indent);
        asmWriter.push(Register.eax);

        asmWriter.startParagraph(indent, "Get array index");
        indexExpression.addWriter(asmWriter);
        indexExpression.addEnv(getEnv());
        indexExpression.codeGen(indent + 1);

        asmWriter.startParagraph(indent, "Pop arr instance addr to ebx:");
        asmWriter.indent(indent);
        asmWriter.pop(Register.ebx);

        asmWriter.startParagraph(indent, "Bound check");
        asmWriter.extern("__exception");
        asmWriter.indent(indent);
        asmWriter.movFromAddr(Register.ecx, "ebx + " + 8);
        asmWriter.indent(indent);
        asmWriter.cmp(Register.eax, Register.ecx);
        asmWriter.indent(indent);
        asmWriter.jge("__exception");
        asmWriter.indent(indent);
        asmWriter.cmp(Register.ecx, "0");
        asmWriter.indent(indent);
        asmWriter.jl("__exception");

        asmWriter.startParagraph(indent, "Access array");
        asmWriter.indent(indent);
        asmWriter.add(Register.eax, 2);
        asmWriter.indent(indent);
        asmWriter.imul(Register.eax, 4);
        asmWriter.indent(indent);
        asmWriter.add(Register.eax, Register.ebx);

        indent--;
        asmWriter.startParagraph(indent, "---End Array Access get Addr");
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
