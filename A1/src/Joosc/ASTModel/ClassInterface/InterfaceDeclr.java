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
    private String canonicalID;
    private ClassEnv env;

    public InterfaceDeclr(InterfaceDeclrNode node) {
        modifiers = node.getModifiers();
        name = node.getName();
        extendsInterfaceTypes = node.getExtendsInterfaceTypes();
        interfaceBody = node.getInterfaceBody().stream().map(AbstractMethodDeclr::new)
                .collect(Collectors.toCollection(ArrayList::new));
    }

    @Override
    public void buildCanonicalName(String packageName) {
        canonicalID = packageName + DOT + name;
    }

    public ArrayList<Symbol> getModifiers() {
        return modifiers;
    }

    public ArrayList<ArrayList<String>> getExtendsInterfaceTypes() {
        return extendsInterfaceTypes;
    }

    public ArrayList<AbstractMethodDeclr> getInterfaceBody() {
        return interfaceBody;
    }

    @Override
    public String getCanonicalName() {
        return canonicalID;
    }

    @Override
    public void addEnv(ClassEnv env) {
        this.env = env;
    }
}
