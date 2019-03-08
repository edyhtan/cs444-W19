package Joosc.Environment;

import java.util.ArrayList;

public class FieldsVarInfo {
    String name;

    TypeInfo typeInfo;

    public FieldsVarInfo(String name, TypeInfo typeInfo) {
        this.typeInfo = typeInfo;
    }



    public String getFieldName() {
        return name;
    }

    public String getFullTypeName() {
        return String.join(".",typeInfo.fullName);
    }

    public TypeInfo getTypeInfo() {
        return typeInfo;
    }

    public boolean isTypeArray() {
        return typeInfo.isArray;
    }

    public boolean isTypePrimitive() {
        return typeInfo.isPrimitive;
    }

//    Legacy Code:
//    Type type;
//    public FieldsVarInfo(String name, ArrayList<String> typeName, boolean isPrimitive, boolean isArray) {
//        type = new Type(typeName, isPrimitive, isArray);
//        this.name = name;
//    }
//    class Type {
//        boolean isPrimitive;
//        boolean isArray;
//        ArrayList<String> fullName;
//
//        Type(ArrayList<String> name, boolean isPrimitive, boolean isArray) {
//            fullName = name;
//            this.isPrimitive = isPrimitive;
//            this.isArray = isArray;
//        }
//    }
}
