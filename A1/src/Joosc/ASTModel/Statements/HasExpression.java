package Joosc.ASTModel.Statements;

import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;

public interface HasExpression{
    void checkExpression(Env env) throws NamingResolveException;
    void checkType() throws TypeCheckException;
    void setParentIsStatic(boolean parentIsStatic);
}
