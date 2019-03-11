package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.Arrays;

public class Literal extends ExpressionContent {
    public String literal;
    public String kind;

    public Literal(String literal, String kind) {
        this.kind = kind;
        this.literal = literal;
    }

    @Override
    public void validate() throws NamingResolveException {

    }

    @Override
    public JoosType getType() throws TypeCheckException {
        if (kind.equals(Symbol.IntLiteral)) {
            joosType = JoosType.getJoosType("int");
        }
        if (kind.equals(Symbol.BooleanLiteral)) {
            joosType = JoosType.getJoosType("boolean");
        }
        if (kind.equals(Symbol.CharLiteral)){
            joosType = JoosType.getJoosType("char");
        }
        if (kind.equals(Symbol.Null)){
            joosType = JoosType.NULL;
        }
        if (kind.equals(Symbol.StringLiteral)) {
            joosType = JoosType.getJoosType(new ArrayList<>(Arrays.asList("java", "lang", "String")));
        }
        return joosType;
    }
}
