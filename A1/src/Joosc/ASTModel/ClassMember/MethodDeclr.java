package Joosc.ASTModel.ClassMember;

import Joosc.ASTBuilding.ASTStructures.AbstractMethodDeclrNode;
import Joosc.ASTBuilding.ASTStructures.MethodDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Statements.*;
import Joosc.ASTModel.Type;
import Joosc.AsmWriter.AsmWriter;
import Joosc.AsmWriter.Register;
import Joosc.Environment.LocalEnv;
import Joosc.Environment.MethodInfo;
import Joosc.Environment.SymbolTable;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UninitializedVariableException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;
import Joosc.util.Pair;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.stream.Collectors;

public class MethodDeclr implements ClassMemberDeclr, Method {
    ArrayList<Symbol> modifiers;
    Type type;
    String name;
    ArrayList<Pair<Type, String>> formalParamList;
    ArrayList<Statement> bodyBlock;
    ArrayList<String> canonicalID;
    LocalEnv localEnv;

    String methodSignature;
    JoosType returnType;

    public MethodInfo info;

    public MethodDeclr(MethodDeclrNode node) {
        modifiers = node.getModifiers();
        type = new Type(node.getType());
        name = node.getName();

        formalParamList = node.getFormalParamList().stream()
                .map(pair -> new Pair<>(new Type(pair.getKey()), pair.getValue()))
                .collect(Collectors.toCollection(ArrayList::new));
        bodyBlock = node.getBodyBlock() == null ? new ArrayList<>()
                : node.getBodyBlock().stream().map(Statement::convertStatementNode)
                .collect(Collectors.toCollection(ArrayList::new));
    }

    public MethodDeclr(AbstractMethodDeclrNode node) {
        modifiers = node.getModifiers();
        type = new Type(node.getType());
        name = node.getName();

        formalParamList = node.getFormalParamList().stream()
                .map(pair -> new Pair<>(new Type(pair.getKey()), pair.getValue()))
                .collect(Collectors.toCollection(ArrayList::new));
        bodyBlock = null;
    }

    public MethodDeclr(MethodDeclr node) {
        modifiers = new ArrayList<>(node.modifiers);
        type = node.type;
        name = node.name;
        formalParamList = new ArrayList<>(node.formalParamList);
        bodyBlock = node.bodyBlock == null ? new ArrayList<>() : new ArrayList<>(node.bodyBlock);
        localEnv = node.localEnv;
    }


    @Override
    public void reachabilityAnalysis() throws UnreachableStatementException {
        boolean lastOut = true;
        // No bodyBlock, we good
        if (bodyBlock != null) {
            for (Statement stmt : bodyBlock) {
                if (!lastOut) {
                    throw new UnreachableStatementException();
                }
                stmt.reachabilityAnalysis(lastOut);
                lastOut = stmt.getOut();
            }
        }

        if (type.getKind() != null && !type.getKind().equals(Symbol.Void)) {
            if (lastOut && !modifiers.contains(Symbol.Native) && !modifiers.contains(Symbol.Abstract)) {
                throw new UnreachableStatementException("Missing return statement");
            }
        }
    }

    @Override
    public void definiteAssignmentAnalysis(HashMap initializedFields) throws UninitializedVariableException {
        HashMap localInitializedFields = (HashMap) initializedFields.clone();
        // TODO
    }

    public void validateStaticAccess() throws TypeCheckException {
        if (modifiers.contains(Symbol.Static)) {
            bodyBlock.forEach(x -> {
                if (x instanceof HasExpression) {
                    ((HasExpression) x).setParentIsStatic(true);
                }
            });
        }
    }

    public void validateReturnType() throws TypeCheckException, NamingResolveException {
        JoosType returnJoosType;
        if (type.getArrayKind() == null) {
            // primitive
            if (type.getNames() == null || type.getNames().isEmpty()) {
                returnJoosType = JoosType.getJoosType(type.getKind().getSymbolString());
            } else { // reference
                returnJoosType = localEnv.findResolvedType(type.getTypeName().get(0));
            }
        } else {
            if (type.getNames() == null || type.getNames().isEmpty()) {
                returnJoosType = new ArrayType(localEnv.typeResolve(type.getTypeName()));
            } else { // reference
                returnJoosType = new ArrayType(localEnv.typeResolve(type.getTypeName()));
            }
        }

        if (bodyBlock.size() > 0) {
            Statement lastStatement = bodyBlock.get(bodyBlock.size() - 1);
            if (lastStatement instanceof ReturnStatement && ((ReturnStatement) lastStatement).getExpression() != null) {
                JoosType actual = ((ReturnStatement) lastStatement).getExpression().getType();
                if (!actual.isA(returnJoosType)) {
                    throw new TypeCheckException(
                            String.format("Method declared return type does not match actual return type： %s, %s.",
                                    returnJoosType.getTypeName(),
                                    actual.getTypeName()));
                }
            }
        }
    }

    public void buildCanonicalName(ArrayList<String> className) {
        //TODO
    }

    public boolean isAbstract() {
        return modifiers.contains(Symbol.Abstract);
    }

    public Type getType() {
        return type;
    }

    @Override
    public ArrayList<Statement> getBodyBlock() {
        return bodyBlock;
    }

    @Override
    public ArrayList<Pair<Type, String>> getFormalParamList() {
        return formalParamList;
    }

    @Override
    public String getName() {
        return name;
    }

    public ArrayList<String> getCanonicalID() {
        return canonicalID;
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

    public String getSigLabel() {
        String label = this.methodSignature.replace(',', '_').replace("[]", "@");
        if (modifiers.contains(Symbol.Static)) {
            return "_STATIC_" + label;
        } else return label;

    }

    @Override
    public void setType(JoosType type) {
        returnType = type;
    }

    @Override
    public JoosType getJoosType() {
        return returnType;
    }

    @Override
    public void addLocalEnvironment(LocalEnv localEnv) {
        this.localEnv = localEnv;
    }

    //Code Gen
    AsmWriter asmWriter;
    String methodLabel;

    public void setMethodLabel(String methodLabel) {
        this.methodLabel = methodLabel;
    }

    public String getMethodLabel() {
        return this.methodLabel;
    }

    @Override
    public void codeGen(int indent) {
        if (name.equals("test") && modifiers.contains(Symbol.Static)) {
            asmWriter.outputInit();
        }

        asmWriter.indent(indent + 1);
        asmWriter.global(methodLabel);
        asmWriter.indent(indent);
        asmWriter.label(methodLabel);

        asmWriter.indent(indent + 1);
        asmWriter.push(Register.ebp);
        asmWriter.indent(indent + 1);
        asmWriter.mov(Register.ebp, Register.esp);
        asmWriter.println("");


        // TODO: distinguish static && non-static
        // extra one for eip
        int size = formalParamList.size() + 1;
        for (int i = 0; i < formalParamList.size(); ++i) {
            Pair<Type, String> param = formalParamList.get(i);
            localEnv.assignOffset(param.getValue(), (size - i) * 4);
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
        System.out.println(methodLabel);
        localEnv.printOffset();


        asmWriter.indent(indent + 1);

        for (Statement statement : bodyBlock) {
            statement.codeGen(indent + 1);
        }

        asmWriter.println("");
        asmWriter.indent(indent+1);
        asmWriter.label("_method_return_" + methodLabel);
        asmWriter.indent(indent + 2);
        asmWriter.pop(Register.ebp);
        asmWriter.indent(indent + 2);
        asmWriter.ret();

        asmWriter.println("");

    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
