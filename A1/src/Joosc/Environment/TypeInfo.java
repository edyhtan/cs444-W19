package Joosc.Environment;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Type;
import Joosc.TypeSystem.JoosType;

import java.util.*;

public class TypeInfo {
    public boolean isArray;
    public ArrayList<String> fullName;

    JoosType joosType;

    static final Set<Symbol> primitiveTypes;
    static {
        primitiveTypes = new HashSet<>();
        Symbol[] pt = new Symbol[]{
                Symbol.Void,
                Symbol.Int,
                Symbol.Boolean,
                Symbol.Byte,
                Symbol.Short,
                Symbol.Char
        };
        primitiveTypes.addAll(Arrays.asList(pt));
    }

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
}
