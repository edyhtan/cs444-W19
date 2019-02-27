package Joosc.ASTModel.ClassInterface;

import Joosc.ASTBuilding.ASTStructures.ClassDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;

import java.util.ArrayList;

public class ClassDeclr implements TypeDeclr {
    private ArrayList<Symbol> modifiers;
    private String name;
    private String canonicalID;
    private ArrayList<String> parentClass;
    private ArrayList<ArrayList<String>> interfaces;

    public ClassDeclr(ClassDeclrNode node) {
        modifiers = node.getClassModifiers();
        parentClass = node.getParentClassIdentifier();
        interfaces = node.getInterfaceTypes();
        name = node.getName();
    }

    public void buildCanonicalName(String packageName) {
        canonicalID = packageName + DOT + name;
    }

    public ArrayList<Symbol> getModifers() {
        return modifiers;
    }

    public String getCanonicalID() {
        return canonicalID;
    }

    public ArrayList<ArrayList<String>> getInterfaces() {
        return interfaces;
    }

    public ArrayList<String> getParentClass() {
        return parentClass;
    }
}
