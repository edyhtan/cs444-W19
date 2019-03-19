package Joosc.TypeSystem;

import Joosc.Environment.ClassEnv;
import Joosc.Exceptions.ASTException;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class ArrayType extends JoosType{
    JoosType joosType;

    public ArrayType(ClassEnv classEnv) {
        super(classEnv);
        this.joosType = new JoosType(classEnv);
    }

    public ArrayType(JoosType joosType) {
        super(joosType);
        this.joosType = joosType;
    }

    // check primitive types
    public boolean equals(ArrayType arrayType) {
        return this.joosType.getTypeName().equals(arrayType.joosType.typeName);
    }

    public boolean isA(JoosType type) {
        if (type instanceof ArrayType) {
            return this.joosType.isA(((ArrayType)type).joosType);
        }

        return type.equals(getJoosType(new ArrayList<>(Arrays.asList("java", "lang", "Object"))))
                || type.equals(getJoosType(new ArrayList<>(Arrays.asList("java", "lang", "Cloneable"))))
                || type.equals(getJoosType(new ArrayList<>(Arrays.asList("java", "io", "Serializable"))))
                || type.equals(NULL);
    }

    public ArrayList<String> getTypeName() {
        ArrayList<String> arr = new ArrayList<>(super.getTypeName());
        arr.add("[]");
        return arr;
    }

    public JoosType getJoosType() {
        return joosType;
    }
}
