package Joosc.ASTModel.ClassInterface;

import Joosc.ASTBuilding.ASTStructures.ClassDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;

import java.util.ArrayList;

public class ClassDeclr implements TypeDeclr{
    private ArrayList<Symbol> modifers;
    private ArrayList<String> canonicalID;
    private ArrayList<String> parentClass;
    private ArrayList<ArrayList<String>> interfaces;

    public ClassDeclr(ClassDeclrNode node) {
        modifers = node.getClassModifiers();
        parentClass = node.getParentClassIdentifier();
        interfaces = node.getInterfaceTypes();
    }

    public void buildCanonicalName(ArrayList<String> packageName, String className) {
        canonicalID = new ArrayList<> (packageName);
        canonicalID.add(className);
    }

    private ArrayList<Symbol> getModifers() {
        return modifers;
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
