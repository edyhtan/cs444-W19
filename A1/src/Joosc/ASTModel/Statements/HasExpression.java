package Joosc.ASTModel.Statements;

import Joosc.ASTModel.Scope;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;

public interface HasExpression{
    void checkExpression(LocalEnv env) throws NamingResolveException;
}
