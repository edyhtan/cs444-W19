package Joosc.ASTModel.ClassMember;

import Joosc.ASTBuilding.ASTStructures.ConstructorDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.Statements.Block;
import Joosc.ASTModel.Statements.ForStatement;
import Joosc.ASTModel.Statements.HasScope;
import Joosc.ASTModel.Statements.Statement;
import Joosc.ASTModel.Type;
import Joosc.AsmWriter.AsmWriter;
import Joosc.AsmWriter.Register;
import Joosc.Environment.LocalEnv;
import Joosc.Environment.MethodInfo;
import Joosc.Environment.SymbolTable;
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
        /**
         *  calculate and assign offset
         */
        // extra one for eip
        int size = formalParamList.size() + 1;
        for (int i = 0; i < formalParamList.size(); ++i) {
            Pair<Type, String> param = formalParamList.get(i);
            localEnv.assignOffset(param.getValue(), (size - i) * 4);
        }

        if (getModifiers().contains(Symbol.Static)) {
            localEnv.setThis((size+1)*4);
        }

        for (Statement statement : bodyBlock) {
            statement.addWriter(asmWriter);

            SymbolTable.assignOffset(statement, localEnv);

            if (statement instanceof ForStatement) {
                if(((ForStatement)statement).getBlock().size() == 1 && ((ForStatement)statement).getBlock().get(0) instanceof Block) {
                    SymbolTable.assignOffset(((ForStatement) statement).getStatement(), (LocalEnv)((HasScope)((ForStatement) statement).getStatement().getBlock().get(0)).getEnv());
                }
            }
        }

        // Ctor label
        asmWriter.indent(2);
        asmWriter.global(info.methodLabel);
        asmWriter.indent(indent);
        asmWriter.label(info.methodLabel);
        indent += 1;
        asmWriter.prologue(indent);
        ClassDeclr curClass = (ClassDeclr) localEnv.getCurrentClass();
        JoosType extendType = curClass.getClassEnv().extendName;
        // Pseudo way to get object addr
        Integer objectOffset = formalParamList.size() * 4 + 8;



        // Super default constructor if not object
        if (!name.equals("Object")) {
            asmWriter.indent(indent);
            asmWriter.movFromAddr(Register.eax, "ebp + " + objectOffset.toString());
            asmWriter.indent(indent);
            asmWriter.push(Register.eax);
            // Call parent constructor
            String parentConstructorLabel =
                    "__constructor__"
                    + extendType.getQualifiedName().replace('.', '_')
                    + "__"
                    + extendType.getClassEnv().getTypeDeclr().getSimpleName();
            asmWriter.indent(indent + 1);
            asmWriter.extern(parentConstructorLabel);
            asmWriter.indent(indent);
            asmWriter.mov(Register.eax, parentConstructorLabel);

            asmWriter.indent(indent);
            asmWriter.call(Register.eax);

            asmWriter.indent(indent);
            asmWriter.sub(Register.esp, 4);
        }

        // Field initializers
        // Get object addr and push it to stack
        asmWriter.comment("Field init, push object to stack");
        asmWriter.indent(indent);
        asmWriter.movFromAddr(Register.eax, "ebp + " + objectOffset.toString());
        asmWriter.indent(indent);
        asmWriter.push(Register.eax);
        for(FieldDeclr fieldDeclr : curClass.getFields()) {
            fieldDeclr.addWriter(asmWriter);
            asmWriter.comment("Field init:: " + fieldDeclr.getName());
            fieldDeclr.codeGen(indent + 1);
            Integer offset = curClass.getClassEnv().getFieldInfo(fieldDeclr.getName()).getOffset();
            asmWriter.indent(indent);
            asmWriter.movFromAddr(Register.ebx, Register.esp);
            asmWriter.indent(indent);
            asmWriter.add(Register.ebx, offset);
            asmWriter.indent(indent);
            asmWriter.movToAddr(Register.ebx, Register.eax);
        }
        // Pop object addr from stack
        asmWriter.comment("Field init end, pop object");
        asmWriter.indent(indent);
        asmWriter.add(Register.esp, 4);

        // Code for ctor body
        asmWriter.comment("Constructor Body");
        for(Statement stmt : bodyBlock) {
            stmt.addWriter(asmWriter);
            stmt.codeGen(indent + 1);
        }

        // Epilogue
        asmWriter.comment("Epilogue");
        asmWriter.epilogue(indent);

    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
