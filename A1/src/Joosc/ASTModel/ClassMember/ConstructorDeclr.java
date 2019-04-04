package Joosc.ASTModel.ClassMember;

import Joosc.ASTBuilding.ASTStructures.ConstructorDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Statements.Statement;
import Joosc.ASTModel.Type;
import Joosc.AsmWriter.AsmWriter;
import Joosc.Environment.LocalEnv;
import Joosc.Environment.MethodInfo;
import Joosc.Exceptions.UninitializedVariableException;
import Joosc.Exceptions.UnreachableStatementException;

import Joosc.TypeSystem.JoosType;
import Joosc.util.Pair;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.stream.Collectors;

public class ConstructorDeclr implements ClassBodyDeclr, Method {
    private ArrayList<Symbol> modifiers;
    private String name;
    private ArrayList<Pair<Type, String>> formalParamList;
    private ArrayList<Statement> bodyBlock;
    private ArrayList<String> canonicalID;
    private LocalEnv localEnv;

    private String methodSignature;
    private JoosType returnType;

    public MethodInfo info;

    public ConstructorDeclr(ConstructorDeclrNode node) {
        modifiers = node.getModifiers();
        name = node.getName();

        formalParamList = node.getFormalParamList().stream()
                .map(pair -> new Pair<>(new Type(pair.getKey()), pair.getValue()))
                .collect(Collectors.toCollection(ArrayList::new));

        bodyBlock = node.getBodyBlock().stream().map(Statement::convertStatementNode)
                .collect(Collectors.toCollection(ArrayList::new));
    }

    @Override
    public void reachabilityAnalysis() throws UnreachableStatementException {
        boolean lastOut = true;
        for (Statement stmt : bodyBlock) {
            if (!lastOut) {
                throw new UnreachableStatementException();
            }
            stmt.reachabilityAnalysis(lastOut);
            lastOut = stmt.getOut();
        }
    }

    @Override
    public void definiteAssignmentAnalysis(HashMap initializedFields) throws UninitializedVariableException {
        //TODO
    }

    @Override
    public void buildCanonicalName(ArrayList<String> className) {
        // TODO
    }

    @Override
    public void addLocalEnvironment(LocalEnv localEnv) {
        this.localEnv = localEnv;
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public ArrayList<Statement> getBodyBlock() {
        return bodyBlock;
    }

    @Override
    public ArrayList<Pair<Type, String>> getFormalParamList() {
        return formalParamList;
    }

    public ArrayList<Symbol> getModifiers() {
        return modifiers;
    }

    @Override
    public void setMethodSignature(String signature) {
        methodSignature = signature;
    }

    @Override
    public String getMethodSignature() {
        return methodSignature;
    }

    @Override
    public void setType(JoosType type) {
        returnType = type;
    }

    @Override
    public JoosType getJoosType() {
        return returnType;
    }

    //Code Gen
    AsmWriter asmWriter;

    /**
     *
     * */
    @Override
    public void codeGen(int indent) {
        asmWriter.label("");
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
