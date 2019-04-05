package Joosc.ASTModel.ClassMember;

import Joosc.ASTBuilding.ASTStructures.FieldDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.ASTModel.Scope;
import Joosc.ASTModel.Statements.HasExpression;
import Joosc.ASTModel.Statements.Statement;
import Joosc.ASTModel.Type;
import Joosc.AsmWriter.AsmWriter;
import Joosc.AsmWriter.Register;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;
import Joosc.util.Pair;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.HashSet;

public class FieldDeclr extends Scope implements ClassMemberDeclr, HasExpression {
    private ArrayList<Symbol> modifiers;
    private Type type;
    private String name;
    private Expression initExpression;
    private ArrayList<String> canonicalID;

    private JoosType joosType;

    public FieldDeclr(FieldDeclrNode node) {
        modifiers = node.getModifiers();
        name = node.getName();
        type = new Type(node.getType());
        initExpression = Expression.convertExpressionNode(node.getnitExpression());
    }

    @Override
    public void buildCanonicalName(ArrayList<String> className) {
        canonicalID = new ArrayList<>(className);
        canonicalID.add(name);
    }

    @Override
    public ArrayList<Pair<Type, String>> getFormalParamList() {
        return null;
    }

    @Override
    public ArrayList<Statement> getBodyBlock() {
        return null;
    }

    @Override
    public String getName() {
        return name;
    }

    public ArrayList<Symbol> getModifiers() {
        return modifiers;
    }

    public Type getType() {
        return type;
    }

    public Expression getInitExpression() {
        return initExpression;
    }

    public ArrayList<String> getCanonicalID() {
        return canonicalID;
    }

    public void addJoosType(JoosType joosType) {
        this.joosType = joosType;
    }

    @Override
    public void checkExpression(Env env) throws NamingResolveException {
        if (initExpression != null) {
            initExpression.addEnv(env);
            initExpression.validate();
        }
    }

    @Override
    public void checkType() throws TypeCheckException {
        if (initExpression != null) {
            if (modifiers.contains(Symbol.Static)) {
                initExpression.setParentIsStatic(true);
            }
            JoosType initType = initExpression.getType();


            if (!joosType.assignable(initType)) {
                throw new TypeCheckException("Unmatched type in field declaration: " + String.join(".", joosType.getTypeName()) + " " +
                        String.join(".", initType.getTypeName()));
            }
        }
    }

    public void checkForwardDeclaration(HashSet<String> declared) throws TypeCheckException {
        declared.add(name);
        if (initExpression != null) {
            initExpression.forwardDeclaration(name, declared);
        }
    }

    @Override
    public void setParentIsStatic(boolean parentIsStatic) {
    }

    @Override
    public void setMethodSignature(String signature) {
    }

    @Override
    public String getMethodSignature() {
        return null;
    }

    @Override
    public void setType(JoosType type) {
    }

    @Override
    public JoosType getJoosType() {
        return joosType;
    }

    // Code Gen
    AsmWriter asmWriter;
    String staticFieldLabel;

    @Override
    public void codeGen(int indent) {
        initExpression.addWriter(asmWriter);
        if (initExpression != null) {
            initExpression.codeGen(indent + 1);
        } else {
            asmWriter.mov(Register.eax, 0);
        }
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }

    public void setStaticFieldLabel(String label) {
        staticFieldLabel = label;
    }
}
