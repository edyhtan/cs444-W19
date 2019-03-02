package Joosc.Environment;

import Joosc.Exceptions.NamingResolveException;

public interface Env {
    void nameCheck() throws NamingResolveException;
}
