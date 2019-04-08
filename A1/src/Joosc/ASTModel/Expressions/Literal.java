package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.AsmWriter.AsmWriter;
import Joosc.AsmWriter.Register;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

public class Literal extends ExpressionContent implements ConstantExpression {
    public String literal;
    public String kind;

    // Literal representation of value and type of constant expression
    private ConstantLiteral constantLiteral = null;

    public Literal(String literal, String kind) {
        this.kind = kind;
        this.literal = literal;
    }

    @Override
    public void localVarSelfReference(String id) throws UnreachableStatementException {

    }

    @Override
    public Env validate() throws NamingResolveException {

        return null;
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        if (kind.equals(Symbol.IntLiteral.getSymbolString())) {
            joosType = JoosType.getJoosType("int");
        }
        if (kind.equals(Symbol.BooleanLiteral.getSymbolString())) {
            joosType = JoosType.getJoosType("boolean");
        }
        if (kind.equals(Symbol.CharLiteral.getSymbolString())) {
            joosType = JoosType.getJoosType("char");
        }
        if (kind.equals(Symbol.Null.getSymbolString())) {
            joosType = JoosType.NULL;
        }
        if (kind.equals(Symbol.StringLiteral.getSymbolString())) {
            joosType = JoosType.getJoosType(new ArrayList<>(Arrays.asList("java", "lang", "String")));
        }
        return joosType;
    }

    public String getLiteral() {
        return literal;
    }

    public String getKind() {
        return kind;
    }

    @Override
    public boolean isConstantExpression() {
        return true;
    }

    @Override
    public ConstantLiteral evaluateConstant() {
        try {
            joosType = getType();
        } catch (Exception e) {
            System.exit(4);
        }
        return new ConstantLiteral(literal, joosType);
    }

    @Override
    public void forwardDeclaration(String fieldname, HashSet<String> initializedName) throws TypeCheckException {

    }

    //Code Gen
    AsmWriter asmWriter;

    @Override
    public void codeGen(int indent) {
        String movLit = null;
        if (kind.equals(Symbol.IntLiteral.getSymbolString())) {
            movLit = literal;
        }
        if (kind.equals(Symbol.BooleanLiteral.getSymbolString())) {
            if (literal.equals("true")) {
                movLit = "1";
            } else {
                movLit = "0";
            }
        }
        if (kind.equals(Symbol.CharLiteral.getSymbolString())) {
            movLit = Integer.toString((int)literal.charAt(1));
        }
        if (kind.equals(Symbol.Null.getSymbolString())) {
            movLit = "0";
        }

        if (kind.equals(Symbol.StringLiteral.getSymbolString())) {
            asmWriter.indent(indent);
            asmWriter.mov(Register.eax, 8);
            asmWriter.extern("__malloc");
            asmWriter.indent(indent);
            asmWriter.call("__malloc");
            asmWriter.indent(indent);
            asmWriter.extern("__class_java_lang_String");
            asmWriter.mov(Register.ebx, "__class_java_lang_String");
            asmWriter.indent(indent);
            asmWriter.movToAddr(Register.eax, Register.ebx);
            asmWriter.indent(indent);
            asmWriter.push(Register.eax);
            asmWriter.println();

            asmWriter.indent(indent);
            asmWriter.mov(Register.eax, literal.length() - 2);
            asmWriter.indent(indent);
            asmWriter.mov(Register.ebx, 0);
            asmWriter.indent(indent);
            asmWriter.extern("__new_array");
            asmWriter.call("__new_array");
            int index = 0;
            char[] carr = literal.substring(1, literal.length()-1).toCharArray();
            for(char c : carr) {
                asmWriter.indent(indent + 1);
                asmWriter.mov(Register.ecx, (int)c);
                asmWriter.indent(indent + 1);
                asmWriter.movToAddr("eax + " + (index++ * 4 + 12), Register.ecx);
            }
            asmWriter.indent(indent);
            asmWriter.push(Register.eax);

            asmWriter.indent(indent);
            asmWriter.extern("__constructor__java_lang_String__String$char@$");
            asmWriter.call("__constructor__java_lang_String__String$char@$");
            asmWriter.indent(indent);
            asmWriter.add(Register.esp, 4);
            asmWriter.indent(indent);
            asmWriter.pop(Register.eax);
            movLit = null;
        }

        if (movLit != null) {
            asmWriter.indent(indent);
            asmWriter.mov(Register.eax, movLit);
        }
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
