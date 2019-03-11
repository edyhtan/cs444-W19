package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.Type;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;


public interface Env {
    void semanticAnalysis() throws NamingResolveException, TypeCheckException;

    boolean isFieldDeclared(String simpleName);
    boolean isLocalVariableDeclared(String simpleName);

    TypeDeclr getCurrentClass();
    ClassBodyDeclr getCurrentMethod();

    FieldsVarInfo typeResolve(String name, Type type) throws NamingResolveException;
    JoosType typeResolve(ArrayList<String> type) throws NamingResolveException;
    TypeInfo typeResolve(Type type) throws NamingResolveException;

    JoosType getJoosType();

    FieldsVarInfo getFieldInfo(ArrayList<String> name);
    FieldsVarInfo getVarInfo(ArrayList<String> name);
}
