package Joosc.Environment;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Type;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;

import java.util.*;

public class TypeInfo {
    public boolean isArray;
    public ArrayList<String> fullName;
    JoosType joosType;

    public TypeInfo(boolean isArray) {
        this.isArray = isArray;
    }

    public boolean equals(TypeInfo type) {
        return this.isArray == type.isArray
                && this.fullName.equals(type.fullName);
    }

    public void rewriteJoosType(JoosType type) {
        joosType = type;
        if (isArray) {
            joosType = new ArrayType(joosType);
        }
        fullName = type.getTypeName();
    }

    public boolean isPrimitive() {
        return joosType.isPrimitive();
    }

    public JoosType getJoosType() {
        return joosType;
    }
}
