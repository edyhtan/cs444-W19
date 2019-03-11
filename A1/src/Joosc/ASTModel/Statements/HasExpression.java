package Joosc.ASTModel.Statements;

import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;

public interface HasExpression{
    void checkExpression(LocalEnv env) throws NamingResolveException;
    void checkType() throws TypeCheckException;
}
