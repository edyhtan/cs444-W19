package Joosc.ASTModel.ClassMember;

import Joosc.ASTBuilding.ASTStructures.AbstractMethodDeclrNode;
import Joosc.ASTBuilding.ASTStructures.MethodDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Statements.Statement;
import Joosc.ASTModel.Type;
import Joosc.Environment.LocalEnv;
import Joosc.util.Pair;

import java.util.ArrayList;
import java.util.stream.Collector;
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
//        canonicalID = new ArrayList<>(node.canonicalID);
        localEnv = node.localEnv;
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
