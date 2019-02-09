package Joosc.AST.Constants;

import java.util.HashMap;

public interface Symbol {
    String toStringSymbol();

    // static fields
    HashMap<String, Symbol> allContent = new HashMap<>();

    static Symbol getSymbol(String str) {
        return allContent.getOrDefault(str, null);
    }
}
