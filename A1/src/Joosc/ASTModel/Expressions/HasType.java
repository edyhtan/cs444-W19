package Joosc.ASTModel.Expressions;

import Joosc.ASTModel.Scope;
import Joosc.Exceptions.NamingResolveException;

public abstract class HasType extends Scope {
    public abstract void validate() throws NamingResolveException;
}
