package Joosc.ASTModel.Expressions;

import Joosc.ASTModel.Scope;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;

public abstract class HasType extends Scope {
    public abstract Env validate() throws NamingResolveException;
}
