package Joosc.Environment;

import java.util.ArrayList;

public class FieldsVarInfo {
    String name;
    Type type;


    public FieldsVarInfo(String name, ArrayList<String> typeName, boolean isPrimitive, boolean isArray) {
        type = new Type(typeName, isPrimitive, isArray);
        this.name = name;
    }

    public String getFullName() {
        return name;
    }

    public String getFullTypeName() {
        return String.join(".",type.fullName);
    }

    public boolean isTypeArray() {
        return type.isArray;
    }

    public boolean isPrimitive() {
        return type.isPrimitive;
    }

    class Type {
        boolean isPrimitive;
        boolean isArray;
        ArrayList<String> fullName;

        Type(ArrayList<String> name, boolean isPrimitive, boolean isArray) {
            fullName = name;
            this.isPrimitive = isPrimitive;
            this.isArray = isArray;
        }
    }
}
