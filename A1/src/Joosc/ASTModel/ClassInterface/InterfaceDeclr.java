package Joosc.ASTModel.ClassInterface;

import Joosc.ASTBuilding.ASTStructures.AbstractMethodDeclr;
import Joosc.ASTBuilding.ASTStructures.InterfaceDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;

import java.util.ArrayList;

public class InterfaceDeclr implements TypeDeclr {
    private ArrayList<Symbol> modifiers;
    private String name;
    private ArrayList<ArrayList<String>> extendsInterfaceTypes;
    private ArrayList<AbstractMethodDeclr> interfaceBody;
    private ArrayList<String> canonicalID;

    public InterfaceDeclr(InterfaceDeclrNode node) {
        modifiers = node.getModifiers();
        name = node.getName();
        extendsInterfaceTypes = node.getExtendsInterfaceTypes();
        interfaceBody = node.getInterfaceBody();
    }

    @Override
    public void buildCanonicalName(ArrayList<String> packageName) {
        canonicalID = new ArrayList<>(packageName);
        canonicalID.add(name);
    }

    private ArrayList<Symbol> getModifiers() {
        return modifiers;
    }

    private ArrayList<ArrayList<String>> getExtendsInterfaceTypes() {
        return extendsInterfaceTypes;
    }

    private ArrayList<AbstractMethodDeclr> getInterfaceBody() {
        return interfaceBody;
    }

    private ArrayList<String> getCanonicalID() {
        return canonicalID;
    }

}
