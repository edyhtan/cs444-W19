package Joosc.ASTModel;

import Joosc.Environment.LocalEnv;

public abstract class Scope {
    LocalEnv env;

    public LocalEnv getEnv() {
        return env;
    }

    public void addEnv(LocalEnv env) {
        this.env = env;
    }
}
