package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

public class Literal extends ExpressionContent {
    public String literal;
    public String kind;

    public Literal(String literal, String kind) {
        this.kind = kind;
        this.literal = literal;

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
        if (kind.equals(Symbol.CharLiteral.getSymbolString())){
            joosType = JoosType.getJoosType("char");
        }
        if (kind.equals(Symbol.Null.getSymbolString())){
            joosType = JoosType.NULL;
        }
        if (kind.equals(Symbol.StringLiteral.getSymbolString())) {
            joosType = JoosType.getJoosType(new ArrayList<>(Arrays.asList("java", "lang", "String")));
        }
        return joosType;
    }

    @Override
    public void forwardDeclaration(String fieldname, HashSet<String> initializedName) throws TypeCheckException {

    }
}
