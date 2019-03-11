package Joosc.ASTModel.Expressions;

import Joosc.Environment.FieldsVarInfo;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;

public class Names extends ExpressionContent {
    ArrayList<String> name;
    FieldsVarInfo info;

    public Names(ArrayList<String> name) {
        this.name = name;
    }

    public ArrayList<String> getName() {
        return name;
    }

    @Override
    public void validate() throws NamingResolveException {
        info = getEnv().getFieldInfo(name);
        if (info == null) {
            System.err.println(String.join(".", name));
            info = getEnv().getVarInfo(name);
        }
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        return info.getTypeInfo().getJoosType();
    }
}
