package Joosc.ASTModel.ClassMember;

import Joosc.ASTBuilding.ASTStructures.AbstractMethodDeclrNode;
import Joosc.ASTBuilding.ASTStructures.MethodDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Statements.ReturnStatement;
import Joosc.ASTModel.Statements.Statement;
import Joosc.ASTModel.Type;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;
import Joosc.util.Pair;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class MethodDeclr implements ClassMemberDeclr, Method {
    ArrayList<Symbol> modifiers;
    Type type;
    String name;
    ArrayList<Pair<Type, String>> formalParamList;
    ArrayList<Statement> bodyBlock;
    ArrayList<String> canonicalID;
    LocalEnv localEnv;

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
        bodyBlock = node.bodyBlock == null ? new ArrayList<>() : new ArrayList<> (node.bodyBlock);
        localEnv = node.localEnv;
    }

    // TODO: check here!!!!!!
    public void validateReturnType() throws TypeCheckException, NamingResolveException {
        JoosType returnJoosType;
        if(type.getArrayKind() == null) {
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

        if(bodyBlock.size() > 0) {
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
        } else {
//            if(!returnJoosType.equals(JoosType.VOID)) {
//                throw new TypeCheckException("Method body missing for non-void methods.");
//            }
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
    public void addLocalEnvironment(LocalEnv localEnv) {
        this.localEnv = localEnv;
    }
}
