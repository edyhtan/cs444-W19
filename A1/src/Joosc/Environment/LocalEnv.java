package Joosc.Environment;

import Joosc.ASTModel.AST;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.ClassMember.Method;
import Joosc.ASTModel.Statements.HasScope;
import Joosc.ASTModel.Statements.IfStatement;
import Joosc.ASTModel.Statements.LocalVarDeclrStatement;
import Joosc.ASTModel.Statements.Statement;
import Joosc.ASTModel.Type;
import Joosc.Exceptions.NamingResolveException;
import javafx.util.Pair;

import java.util.ArrayList;
import java.util.HashMap;

public class LocalEnv implements Env {
    AST ast;
    HashMap<String, FieldsVarInfo> symbolTable = new HashMap<>();
    ArrayList<LocalEnv> localEnvs = new ArrayList<>();
    Env parent;
    TypeDeclr currentClass;
    ClassBodyDeclr currentMethod;

    public LocalEnv(AST ast, Env parent) {
        this.ast = ast;
        this.parent = parent;
        currentClass = parent.getCurrentClass();
        currentMethod = (ast instanceof ClassBodyDeclr) ? (ClassBodyDeclr) ast : parent.getCurrentMethod();

        //building sub environment
        if (ast instanceof Method && ast instanceof ClassBodyDeclr) {
            ArrayList<Statement> statements = ((ClassBodyDeclr) ast).getBodyBlock();

            System.err.println("AST Method");

            for (Statement statement:statements) {
                if (hasSubEnvironment(statement)) {
                    localEnvs.add(new LocalEnv(statement, this));
                }
            }
        } else if (ast instanceof HasScope) {
            ArrayList<Statement> statements = ((HasScope) ast).getBlock();

            for (Statement statement:statements) {
                if (hasSubEnvironment(statement)) {
                    localEnvs.add(new LocalEnv(statement, this));
                }
                if (statement instanceof IfStatement) {
                    localEnvs.add(new LocalEnv(((IfStatement) statement).getElseClause(), this));
                }
            }
        }
    }

    private boolean hasSubEnvironment(AST ast) {
        return ast instanceof HasScope;
    }

    private void buildLocalVariable() throws NamingResolveException {
        ArrayList<Statement> statements = null;
        if (ast instanceof Method) {
            // parameter
            System.err.println("ctor");
            ArrayList<Pair<Type, String>> param = ((ClassBodyDeclr) ast).getFormalParamList();
            if (param != null) {
                for (Pair<Type, String> pair : param) {
                    if (symbolTable.containsKey(pair.getValue())) {
                        throw new NamingResolveException("Duplicated Local Parameter Name: " + pair.getValue());
                    } else {
                        symbolTable.put(pair.getValue(), new FieldsVarInfo(pair.getValue(), getCanonicalPrefix(), pair.getKey()));
                    }
                }
            }
            statements = ((ClassBodyDeclr) ast).getBodyBlock();
        } else if (ast instanceof HasScope) {
            statements = ((HasScope) ast).getBlock();
        } else {
            statements = new ArrayList<>(); // shouldn't ever fall into this clause.
        }

        for (Statement statement:statements) {
            if (statement instanceof LocalVarDeclrStatement) {
                LocalVarDeclrStatement localVar = (LocalVarDeclrStatement) statement;
                if (isLocalVariableDeclared(localVar.getId())) {
                    throw new NamingResolveException("Duplicated Local Variable: " + localVar.getId());
                }
                symbolTable.put(localVar.getId(), new FieldsVarInfo(localVar.getId(), getCanonicalPrefix(), localVar.getType()));
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
    public boolean isLocalVariableDeclared(String simpleName) {
        return symbolTable.containsKey(simpleName) || parent.isLocalVariableDeclared(simpleName);
    }

    @Override
    public void resolveName() throws NamingResolveException {
        buildLocalVariable();
        for (LocalEnv localEnv:localEnvs) {
            localEnv.resolveName();
        }
    }
}
