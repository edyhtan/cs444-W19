package Joosc.Environment;

import java.util.ArrayList;
import java.util.Arrays;

public enum JavaLang {
    BOOLEAN,
    BYTE,
    CHARACTER,
    CLASS,
    CLONEABLE,
    INTEGER,
    NUMBER,
    OBJECT,
    SHORT,
    STRING,
    SYSTEM;

    String name;
    ArrayList<String> qualifiedName;

    JavaLang() {
        this.name = this.name().substring(0,1) + this.name().substring(1).toLowerCase();
        this.qualifiedName = new ArrayList<>(Arrays.asList("java", "lang", name));
    }
}
