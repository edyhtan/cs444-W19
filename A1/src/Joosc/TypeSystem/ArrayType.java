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

    public boolean isA(JoosType RHS) {
        if(this.getTypeName().equals(new ArrayList<>(Arrays.asList("java", "lang", "Object")))
                || this.getTypeName().equals(new ArrayList<>(Arrays.asList("java", "lang", "Cloneable")))
                || this.getTypeName().equals(new ArrayList<>(Arrays.asList("java", "io", "Serializable")))){
            return true;
        } else {
            return this.joosType.isA(RHS);
        }
    }
}
