package Joosc.ASTModel.ClassInterface;

import Joosc.ASTBuilding.ASTStructures.AbstractMethodDeclrNode;
import Joosc.ASTBuilding.ASTStructures.InterfaceDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;

import java.util.ArrayList;

public class InterfaceDeclr implements TypeDeclr {
    private ArrayList<Symbol> modifiers;
    private String name;
    private ArrayList<ArrayList<String>> extendsInterfaceTypes;
    private ArrayList<AbstractMethodDeclrNode> interfaceBody;
    private String canonicalID;

    public InterfaceDeclr(InterfaceDeclrNode node) {
        modifiers = node.getModifiers();
        name = node.getName();
        extendsInterfaceTypes = node.getExtendsInterfaceTypes();
        interfaceBody = node.getInterfaceBody();
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

    public ArrayList<AbstractMethodDeclrNode> getInterfaceBody() {
        return interfaceBody;
    }

    public String getCanonicalID() {
        return canonicalID;
    }

}
