package Joosc.ASTModel.Statements;

import Joosc.ASTModel.Scope;

import java.util.ArrayList;

public abstract class HasScope extends Scope {
    public abstract ArrayList<Statement> getBlock();
    public abstract void passDownScopes();
}
