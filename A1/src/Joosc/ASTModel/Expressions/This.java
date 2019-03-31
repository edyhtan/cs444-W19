package Joosc.ASTModel.Expressions;

import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.HashSet;

public class This extends ExpressionContent {
    @Override
    public Env validate() throws NamingResolveException {
        joosType = getEnv().getJoosType();
        return null;
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        ArrayList<String> currentClassFullName = getEnv().getCurrentClass().getCanonicalName();
        joosType = JoosType.getJoosType(currentClassFullName);
        return joosType;
    }

    @Override
    public void forwardDeclaration(String fieldname, HashSet<String> initializedName) throws TypeCheckException {

    }
}
