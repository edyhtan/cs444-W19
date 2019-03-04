package Joosc.Environment;

import Joosc.ASTModel.Type;

import java.util.ArrayList;

public class FieldsVarInfo {
    String name;
    String canonicalPrefix;
    Type type;
    ArrayList<String> resolvedType;

    public FieldsVarInfo(String name, String canonicalPrefix, Type type) {
        this.name = name;
        this.canonicalPrefix = canonicalPrefix;
        this.type = type;
    }

    public String getFullName() {
        return canonicalPrefix + "." + name;
    }

    public void setResolvedType(ArrayList<String> type) {
        resolvedType = type;
    }
}
