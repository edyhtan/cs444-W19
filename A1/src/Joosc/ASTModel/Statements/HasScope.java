package Joosc.ASTModel.Statements;

import Joosc.ASTModel.Scope;

import java.util.ArrayList;

public abstract class HasScope extends Scope {
    int numLocalVars = 0;
    public abstract ArrayList<Statement> getBlock();
    public abstract void passDownScopes();
    public abstract void setNumLocalVars();
    public abstract int getNumLocalVars();
}

