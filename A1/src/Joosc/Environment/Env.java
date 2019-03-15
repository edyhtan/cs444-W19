package Joosc.Environment;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.Type;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.HashMap;


public interface Env {
    void semanticAnalysis() throws NamingResolveException, TypeCheckException;

    boolean isFieldDeclared(String simpleName);
    boolean isLocalVariableDeclared(String simpleName);
    boolean hasMethodSignature(String f);

    TypeDeclr getCurrentClass();
    ClassBodyDeclr getCurrentMethod();

    FieldsVarInfo typeResolve(String name, Type type, ArrayList<Symbol> modifiers) throws NamingResolveException;
    JoosType typeResolve(ArrayList<String> type) throws NamingResolveException;
    TypeInfo typeResolve(Type type) throws NamingResolveException;

    JoosType getJoosType();

    FieldsVarInfo getFieldInfo(String name);
    FieldsVarInfo getStaticFieldInfo(String name);

    FieldsVarInfo getVarInfo(String name);
    JoosType findResolvedType(String name);

    HashMap<String, MethodInfo> getAllMethodSignature();
}

