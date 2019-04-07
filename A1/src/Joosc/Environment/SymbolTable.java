package Joosc.Environment;

import Joosc.ASTModel.Statements.*;

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
        if (parent != null) {
            return this.lastOffset + parent.getLastOffset();
        }
        return this.lastOffset + 1;
    }

    public void incLastOffset() {
        this.lastOffset++;
    }

    public SymbolTable getParent() {
        return parent;
    }

    public static void assignOffset(Statement statement, LocalEnv localEnv) {
        if (statement instanceof LocalVarDeclrStatement) {
            localEnv.assignOffset(((LocalVarDeclrStatement) statement).getId(), -4 * localEnv.getLastOffset());
            localEnv.incLastOffset();
        }
        if (statement instanceof Block) {
            for (Statement blkStatement : ((Block) statement).getBlock()) {
                if (blkStatement instanceof LocalVarDeclrStatement) {
                    localEnv.assignOffset(((LocalVarDeclrStatement) blkStatement).getId(), -4 * localEnv.getLastOffset());
                    localEnv.incLastOffset();
                }
            }
        }
        if (statement instanceof ForStatement) {
            if (((ForStatement) statement).getForInit() instanceof LocalVarDeclrStatement) {
                ((ForStatement) statement).getEnv().assignOffset(((LocalVarDeclrStatement) ((ForStatement) statement).getForInit()).getId(), -4 * localEnv.getLastOffset());
                ((LocalEnv) ((ForStatement) statement).getEnv()).incLastOffset();
            }

            if (((ForStatement) statement).getBlock().size() == 1 && ((ForStatement) statement).getBlock().get(0) instanceof HasScope) {
                for (Statement blkStatement : ((HasScope) ((((ForStatement) statement).getStatement().getBlock().get(0)))).getBlock()) {
                    SymbolTable.assignOffset(blkStatement,
                            (LocalEnv) ((HasScope) ((ForStatement) statement).getStatement().getBlock().get(0)).getEnv());
                }
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
