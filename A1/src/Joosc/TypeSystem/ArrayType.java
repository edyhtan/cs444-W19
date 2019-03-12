package Joosc.TypeSystem;

import Joosc.Environment.ClassEnv;

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

    public void addParent(ArrayType type) {
        allParents.put(type.joosType, type.joosType.classEnv);
    }

    @Override
    public ArrayList<String> getTypeName() {
        return joosType.typeName;
    }

    @Override
    public boolean isPrimitive() {
        return isPrimitive(this);
    }

    @Override
    public ClassEnv getClassEnv() {
        return classEnv;
    }

    @Override
    public boolean hasParent(JoosType parent) {
        return allParents.containsKey(parent);
    }

    @Override
    public HashMap<JoosType, ClassEnv> getAllParents() {
        return joosType.allParents;
    }


    // check primitive types
    public boolean equals(ArrayType arrayType) {
        return this.joosType.getTypeName().equals(arrayType.joosType.typeName);
    }

    public boolean isA(ArrayType RHS) {
        if(this.getTypeName().equals(new ArrayList<>(Arrays.asList("java", "lang", "Object")))
                || this.getTypeName().equals(new ArrayList<>(Arrays.asList("java", "lang", "Cloneable")))
                || this.getTypeName().equals(new ArrayList<>(Arrays.asList("java", "io", "Serializable")))){
            return true;
        } else {
            return this.joosType.isA(RHS.joosType);
        }
    }

    // unit tests
    public static void printTypes() {
        JoosType.printTypes();
    }
}
