package Joosc.util;

import Joosc.Environment.FieldsVarInfo;

import java.util.HashMap;

public class SymbolTable {
    HashMap<String, FieldsVarInfo> table = new HashMap<>();
    SymbolTable parent;
    int lastOffset = 0;

    public SymbolTable(SymbolTable parent) {
        this.parent = parent;
    }

    public HashMap<String, FieldsVarInfo> getTable() {
        return this.table;
    }

    public int getLastOffset() {
        if(parent != null) {
            return this.lastOffset + parent.getLastOffset();
        }
        return this.lastOffset+1;
    }

    public void incLastOffset() {
        this.lastOffset++;
    }

    public SymbolTable getParent() {
        return parent;
    }
}
