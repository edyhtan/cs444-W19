package Joosc.Environment;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Type;

import java.util.*;

public class TypeInfo {
    public boolean isPrimitive;
    public boolean isArray;
    public ArrayList<String> fullName;

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
    public static boolean isPrimitive(ArrayList<String> type) {
        return type.size() == 1 && primitiveTypes.contains(Symbol.fromString(type.get(0)));
    }

    public TypeInfo(Type type) {
        fullName = new ArrayList<>();
        isPrimitive = primitiveTypes.contains(type.getKind());
        if (isArray = type.getKind().equals(Symbol.ArrayType)) {
            if (type.getNames() == null) {
                fullName.add(type.getArrayKind().getSymbolString());
            } else {
                fullName = type.getNames();
                isPrimitive = true;
            }
        } else if (type.getNames() == null){
            fullName.add(type.getKind().getSymbolString());
        } else {
            fullName = type.getNames();
        }
    }

    public boolean equals(TypeInfo type) {
        return this.isArray == type.isArray
                && this.fullName.equals(type.fullName);
    }

    public TypeInfo(ArrayList<String> fullName) {
        this.fullName = fullName;
        isPrimitive = fullName.size() == 1 && primitiveTypes.contains(Symbol.fromString(fullName.get(0)));
    }

    public void rewriteFullName(ArrayList<String> newName) {
        fullName = newName;
    }
}
