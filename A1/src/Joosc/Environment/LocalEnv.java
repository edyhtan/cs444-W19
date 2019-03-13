package Joosc.Environment;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.AST;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.ClassMember.Method;
import Joosc.ASTModel.Scope;
import Joosc.ASTModel.Statements.*;
import Joosc.ASTModel.Type;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;
import Joosc.util.Pair;

import java.util.ArrayList;
import java.util.HashMap;

public class LocalEnv implements Env {
    AST ast;
    HashMap<String, FieldsVarInfo> symbolTable = new HashMap<>();
    ArrayList<LocalEnv> subEnvs = new ArrayList<>();
    Env parent;
    TypeDeclr currentClass;
    ClassBodyDeclr currentMethod;

    public LocalEnv(AST ast, Env parent) {
        this.ast = ast;
        this.parent = parent;
        currentClass = parent.getCurrentClass();
        currentMethod = (ast instanceof ClassBodyDeclr) ? (ClassBodyDeclr) ast : parent.getCurrentMethod();
        ArrayList<Statement> statements;

        if (ast instanceof Scope) {
            ((Scope) ast).addEnv(this);
        }

        //building sub environment
        if (ast instanceof Method && ast instanceof ClassBodyDeclr) {
            ((Method) ast).addLocalEnvironment(this);
            statements = ((ClassBodyDeclr) ast).getBodyBlock();
        } else if (ast instanceof Scope) {
            statements = ((HasScope) ast).getBlock();
        } else {
            statements = null;
            System.exit(5); // bad but fine...
        }

        for (Statement statement : statements) {
            if (hasSubEnvironment(statement)) {
                subEnvs.add(new LocalEnv(statement, this));
                if (statement instanceof IfStatement) {
                    ElseBlock elseBlock = ((IfStatement) statement).getElseClause();
                    if (elseBlock != null) {
                        subEnvs.add(new LocalEnv(elseBlock, this));
                    }
                }
            }
        }
    }

    private boolean hasSubEnvironment(AST ast) {
        return ast instanceof Scope;
    }

    public void resolveLocalVariableAndAccess() throws NamingResolveException, TypeCheckException {
        ArrayList<Statement> statements = null;
        if (ast instanceof Method) {
            // parameter
            ArrayList<Pair<Type, String>> param = ((ClassBodyDeclr) ast).getFormalParamList();
            if (param != null) {
                for (Pair<Type, String> pair : param) {
                    if (symbolTable.containsKey(pair.getValue())) {
                        throw new NamingResolveException("Duplicated Local Parameter Name: " + pair.getValue());
                    } else {
                        symbolTable.put(pair.getValue(), typeResolve(pair.getValue(), pair.getKey(), new ArrayList<>()));
                    }
                }
            }
            statements = ((ClassBodyDeclr) ast).getBodyBlock();
        } else if (ast instanceof HasScope) {
            if (ast instanceof ForStatement) {
                Statement forinit = ((ForStatement) ast).getForInit();
                if (forinit instanceof LocalVarDeclrStatement) {
                    LocalVarDeclrStatement forinitLocal = (LocalVarDeclrStatement) forinit;
                    if (isLocalVariableDeclared(forinitLocal.getId())) {
                        throw new NamingResolveException("Duplicated Local Variable name: " + forinitLocal.getId());
                    } else {
                        symbolTable.put(forinitLocal.getId(),
                                typeResolve(forinitLocal.getId(), forinitLocal.getType(), new ArrayList<>()));
                    }
                }
            }
            statements = ((HasScope) ast).getBlock();
        } else {
            statements = new ArrayList<>(); // shouldn't ever fall into this clause.
            System.exit(6);
        }

        for (Statement statement : statements) {
            if (statement instanceof HasScope) {
                ((HasScope) statement).getEnv().resolveLocalVariableAndAccess();
                if (statement instanceof IfStatement) {
                    if (((IfStatement) statement).getElseClause() != null) {
                        ((IfStatement) statement).getElseClause().getEnv().resolveLocalVariableAndAccess();
                    }
                }
            }

            if (statement instanceof HasExpression) {
                ((HasExpression) statement).checkExpression(this);
            }
            if (statement instanceof LocalVarDeclrStatement) {
                LocalVarDeclrStatement localVar = (LocalVarDeclrStatement) statement;
                if (isLocalVariableDeclared(localVar.getId())) {
                    throw new NamingResolveException("Duplicated Local Variable: " + localVar.getId());
                }
                symbolTable.put(localVar.getId(), typeResolve(localVar.getId(), localVar.getType(), new ArrayList<>()));
            }

            if (statement instanceof HasExpression) {
                ((HasExpression) statement).checkType();
            }
        }
    }

    private String getCanonicalPrefix() {
        return String.join(".", currentClass.getCanonicalName()) + "." + currentMethod.getName();
    }

    @Override
    public TypeDeclr getCurrentClass() {
        return currentClass;
    }

    @Override
    public ClassBodyDeclr getCurrentMethod() {
        return currentMethod;
    }

    @Override
    public boolean isFieldDeclared(String simplename) {
        return parent.isFieldDeclared(simplename);
    }

    @Override
    public boolean isLocalVariableDeclared(String simpleName) {
        return symbolTable.containsKey(simpleName) || parent.isLocalVariableDeclared(simpleName);
    }

    @Override
    public boolean hasMethodSignature(String f) {
        return parent.hasMethodSignature(f);
    }

    @Override
    public void semanticAnalysis() throws NamingResolveException {
        for (LocalEnv localEnv : subEnvs) {
            localEnv.semanticAnalysis();
        }
    }

    @Override
    public FieldsVarInfo typeResolve(String name, Type type, ArrayList<Symbol> modifers) throws NamingResolveException {
        return parent.typeResolve(name, type, modifers);
    }

    @Override
    public JoosType typeResolve(ArrayList<String> type) throws NamingResolveException {
        return parent.typeResolve(type);
    }

    @Override
    public JoosType getJoosType() {
        return parent.getJoosType();
    }

    @Override
    public TypeInfo typeResolve(Type type) throws NamingResolveException {
        return parent.typeResolve(type);
    }

    public AST getAst() {
        return ast;
    }

    @Override
    public FieldsVarInfo getFieldInfo(String name){
        return parent.getFieldInfo(name);
    }

    @Override
    public FieldsVarInfo getStaticFieldInfo(String name) {
        return parent.getStaticFieldInfo(name);
    }

    @Override
    public FieldsVarInfo getVarInfo(String name) {
        FieldsVarInfo info = symbolTable.getOrDefault(name, null);
        if (info == null) {
            info = parent.getVarInfo(name);
        }
        return info;
    }

    @Override
    public JoosType findResolvedType(String name) {
        return parent.findResolvedType(name);
    }
}