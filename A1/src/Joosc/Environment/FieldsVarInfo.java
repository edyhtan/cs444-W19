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
        return typeInfo.isPrimitive();
    }
}
