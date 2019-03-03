package Joosc.ASTModel.ClassInterface;

import Joosc.ASTBuilding.ASTStructures.InterfaceDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.AbstractMethodDeclr;
import Joosc.Environment.ClassEnv;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class InterfaceDeclr implements TypeDeclr {
    private ArrayList<Symbol> modifiers;
    private String name;
    private ArrayList<ArrayList<String>> extendsInterfaceTypes;
    private ArrayList<AbstractMethodDeclr> interfaceBody;
    private ArrayList<String> canonicalID;
    private ClassEnv env;

    public InterfaceDeclr(InterfaceDeclrNode node) {
        modifiers = node.getModifiers();
        name = node.getName();
        extendsInterfaceTypes = node.getExtendsInterfaceTypes();
        interfaceBody = node.getInterfaceBody().stream().map(AbstractMethodDeclr::new)
                .collect(Collectors.toCollection(ArrayList::new));
    }

    @Override
    public void buildCanonicalName(ArrayList<String> packageName) {
        canonicalID = new ArrayList<>(packageName);
        canonicalID.add(name);
    }

    public ArrayList<Symbol> getModifiers() {
        return modifiers;
    }

    public ArrayList<AbstractMethodDeclr> getInterfaceBody() {
        return interfaceBody;
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
    public ArrayList<String> getParentClass() {
        return new ArrayList<>();
    }

    @Override
    public ArrayList<ArrayList<String>> getExtendsInterface() {
        return extendsInterfaceTypes == null ? new ArrayList<>() : extendsInterfaceTypes;
    }
}
