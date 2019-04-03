package Joosc.ASTModel.ClassInterface;

import Joosc.ASTBuilding.ASTStructures.InterfaceDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassMember.MethodDeclr;
import Joosc.AsmWriter.AsmWriter;
import Joosc.Environment.ClassEnv;
import Joosc.Exceptions.UninitializedVariableException;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class InterfaceDeclr implements TypeDeclr {
    private ArrayList<Symbol> modifiers;
    private String name;
    private ArrayList<ArrayList<String>> extendsInterfaceTypes;
    private ArrayList<MethodDeclr> methods;
    private ArrayList<String> canonicalID;
    private ClassEnv env;

    public InterfaceDeclr(InterfaceDeclrNode node) {
        modifiers = node.getModifiers();
        name = node.getName();
        extendsInterfaceTypes = node.getExtendsInterfaceTypes();
        methods = node.getInterfaceBody().stream().map(MethodDeclr::new)
                .collect(Collectors.toCollection(ArrayList::new));
    }

    @Override
    public void buildCanonicalName(ArrayList<String> packageName) {
        canonicalID = new ArrayList<>(packageName);
        canonicalID.add(name);
    }

    @Override
    public void reachabilityAnalysis() {}

    @Override
    public void definiteAssignmentAnalysis() throws UninitializedVariableException {

    }

    @Override
    public ArrayList<Symbol> getModifiers() {
        return modifiers;
    }

    @Override
    public ArrayList<ArrayList<String>> getParentInterfaces() {
        return extendsInterfaceTypes;
    }

    @Override
    public ArrayList<MethodDeclr> getMethods() {
        return methods;
    }

    @Override
    public ArrayList<String> getCanonicalName() {
        return canonicalID;
    }

    @Override
    public void addEnv(ClassEnv env) {
        this.env = env;
    }

    @Override
    public String getSimpleName() {
        return name;
    }

    @Override
    public ClassEnv getClassEnv() {
        return env;
    }

    //Code Gen
    AsmWriter asmWriter;

    @Override
    public void codeGen(int indent) {

    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }

}
