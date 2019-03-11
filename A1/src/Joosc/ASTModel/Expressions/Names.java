package Joosc.ASTModel.Expressions;

import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;

public class Names extends ExpressionContent {
    ArrayList<String> name;

    public Names(ArrayList<String> name) {
        this.name = name;
    }

    public ArrayList<String> getName() {
        return name;
    }

    @Override
    public void validate() throws NamingResolveException {
        // Simple Name
        if (name.size() == 1) {
           if (!getEnv().isLocalVariableDeclared(name.get(0)) && !getEnv().isFieldDeclared(name.get(0))) {
               throw new NamingResolveException("Name " + name.get(0) + " not declared.");
           }
        }
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        joosType = JoosType.getJoosType(name);
        return joosType;
    }
}
