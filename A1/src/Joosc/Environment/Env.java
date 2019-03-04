package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.Exceptions.NamingResolveException;

public interface Env {
    void resolveName() throws NamingResolveException;
    boolean isLocalVariableDeclared(String simpleName);
    TypeDeclr getCurrentClass();
    ClassBodyDeclr getCurrentMethod();
}
