package Joosc.Environment;

import Joosc.ASTModel.Type;

public class FieldsVarInfo {
    String name;
    String canonicalPrefix;
    Type type;

    public FieldsVarInfo(String name, String canonicalPrefix, Type type) {
        this.name = name;
        this.canonicalPrefix = canonicalPrefix;
        this.type = type;
    }

    public String getFullName() {
        return canonicalPrefix + "." + name;
    }
}
