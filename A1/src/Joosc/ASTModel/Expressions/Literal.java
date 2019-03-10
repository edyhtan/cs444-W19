package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.NamingResolveException;

public class Literal extends ExpressionContent {
    public String literal;

    public Literal(String literal, String kind) {
        this.literal = literal;
    }

    @Override
    public void validate() throws NamingResolveException {

    }
}
