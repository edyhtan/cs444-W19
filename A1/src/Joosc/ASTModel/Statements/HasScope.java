package Joosc.ASTModel.Statements;

import Joosc.Environment.LocalEnv;

import java.util.ArrayList;

public abstract class HasScope {
    LocalEnv env;

    public LocalEnv getEnv() {
        return env;
    }

    public void addEnv(LocalEnv env) {
        this.env = env;
    }

    public abstract ArrayList<Statement> getBlock();
}
