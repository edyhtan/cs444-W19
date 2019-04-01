package Joosc.ASTModel;

import Joosc.Environment.Env;

public abstract class Scope {
    Env env;

    public Env getEnv() {
        return env;
    }

    public void addEnv(Env env) {
        this.env = env;
    }
}
