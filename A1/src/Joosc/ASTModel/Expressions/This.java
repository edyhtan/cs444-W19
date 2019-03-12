package Joosc.ASTModel.Expressions;

import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;

public class This extends ExpressionContent {
    @Override
    public void validate() throws NamingResolveException {
        joosType = getEnv().getJoosType();
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        ArrayList<String> currentClassFullName = getEnv().getCurrentClass().getCanonicalName();
        joosType = JoosType.getJoosType(currentClassFullName);
        return joosType;
    }
}
