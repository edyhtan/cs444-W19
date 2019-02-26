package Joosc.ASTModel.ClassInterface;

import Joosc.ASTBuilding.ASTStructures.ClassDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;

import java.util.ArrayList;

public class ClassDeclr implements TypeDeclr {
    private ArrayList<Symbol> modifiers;
    private String name;
    private ArrayList<String> canonicalID;
    private ArrayList<String> parentClass;
    private ArrayList<ArrayList<String>> interfaces;

    public ClassDeclr(ClassDeclrNode node) {
        modifiers = node.getClassModifiers();
        parentClass = node.getParentClassIdentifier();
        interfaces = node.getInterfaceTypes();
        name = node.getName();
    }

    public void buildCanonicalName(ArrayList<String> packageName) {
        canonicalID = new ArrayList<> (packageName);
        canonicalID.add(name);
    }

    private ArrayList<Symbol> getModifers() {
        return modifiers;
    }

    private ArrayList<String> getCanonicalID() {
        return canonicalID;
    }

    private ArrayList<ArrayList<String>> getInterfaces() {
        return interfaces;
    }

    private ArrayList<String> getParentClass() {
        return parentClass;
    }
}
