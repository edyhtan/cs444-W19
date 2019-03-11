package Joosc.ASTModel.Expressions;

import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

public class This extends ExpressionContent {
    @Override
    public void validate() throws NamingResolveException {

    }

    @Override
    public JoosType getType() throws TypeCheckException {

        return null;
    }
}
