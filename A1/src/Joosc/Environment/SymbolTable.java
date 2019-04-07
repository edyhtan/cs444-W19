package Joosc.Environment;

import Joosc.ASTModel.Statements.*;

import java.util.HashMap;
import java.util.LinkedHashMap;

public class SymbolTable {
    LinkedHashMap<String, FieldsVarInfo> table = new LinkedHashMap<>();
    SymbolTable parent;
    int lastOffset = 0;

    public SymbolTable(SymbolTable parent) {
        this.parent = parent;
    }

    public LinkedHashMap<String, FieldsVarInfo> getTable() {
        return this.table;
    }

    public int getLastOffset() {
        if (parent != null) {
            return this.lastOffset + parent.getLastOffset();
        }
        return this.lastOffset + 1;
    }

    public SymbolTable getParent() {
        return parent;
    }

    public void assignOffset() {
        for (FieldsVarInfo fieldsVarInfo:table.values()) {
            if (fieldsVarInfo.getOffset() == 0) {
                fieldsVarInfo.setOffset(-getLastOffset() * 4);
                lastOffset++;
            }
        }
    }

    public FieldsVarInfo getOffSet(String name) {
        if (table.containsKey(name)) {
            return table.get(name);
        } else {
            if (parent == null) {
                return null;
            }
            return parent.getOffSet(name);
        }
    }
}
