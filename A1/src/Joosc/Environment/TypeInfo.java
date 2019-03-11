package Joosc.Environment;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Type;
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

    public TypeInfo(boolean isArray, JoosType type) {
        this(isArray);
        this.fullName = type.getTypeName();
        joosType = type;
    }

    public void rewriteJoosType(JoosType type) {
        joosType = type;
        fullName = type.getTypeName();
    }

    public boolean isPrimitive() {
        return joosType.isPrimitive();
    }

    public JoosType getJoosType() {
        return joosType;
    }
}
