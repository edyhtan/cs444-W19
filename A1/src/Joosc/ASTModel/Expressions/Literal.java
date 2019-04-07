package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.AsmWriter.AsmWriter;
import Joosc.AsmWriter.Register;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

public class Literal extends ExpressionContent implements ConstantExpression {
    public String literal;
    public String kind;

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
        asmWriter.indent(indent);
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
            // TODO
        }

        if (movLit != null)
            asmWriter.mov(Register.eax, movLit);
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
