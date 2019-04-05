package Joosc.ASTModel.ClassMember;

import Joosc.ASTBuilding.ASTStructures.ConstructorDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Statements.Statement;
import Joosc.ASTModel.Type;
import Joosc.AsmWriter.AsmWriter;
import Joosc.AsmWriter.Register;
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

    @Override
    public void codeGen(int indent) {
        // Ctor label
        asmWriter.indent(indent);
        asmWriter.label(info.methodLabel);
        indent += 1;
        asmWriter.prologue(indent);

        // Super default constructor if not object
        if (!name.equals("Object")) {
            // Pseudo way to get object addr
            Integer objectOffset = formalParamList.size() * 4 + 8;
            asmWriter.indent(indent);
            asmWriter.mov(Register.eax, "[ ebp + " + objectOffset.toString() + " ]");
            asmWriter.indent(indent);
            asmWriter.push(Register.eax);
            // Call parent constructor
            JoosType extendType = localEnv.getCurrentClass().getClassEnv().extendName;
            String parentConstructorLabel =
                    "__constuctor__"
                    + extendType.getQualifiedName().replace('.', '_')
                    + "__"
                    + extendType.getClassEnv().getTypeDeclr().getSimpleName();
            asmWriter.indent(indent);
            asmWriter.mov(Register.eax, parentConstructorLabel);

            asmWriter.indent(indent);
            asmWriter.call(Register.eax);

            asmWriter.indent(indent);
            asmWriter.sub(Register.esp, 4);
        }

        // Field initializers


        // Code for ctor body
        for(Statement stmt : bodyBlock) {
            stmt.addWriter(asmWriter);
            stmt.codeGen(indent + 1);
        }

        // Epilogue
        asmWriter.epilogue(indent);

    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
