package Joosc.Environment;

import Joosc.Exceptions.NamingResolveException;

public interface Env {
    void resolveName() throws NamingResolveException;
}
