package Joosc.ASTModel.ClassInterface;

import Joosc.ASTBuilding.ASTStructures.*;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.ClassMember.ConstructorDeclr;
import Joosc.ASTModel.ClassMember.FieldDeclr;
import Joosc.ASTModel.ClassMember.MethodDeclr;
import Joosc.Environment.ClassEnv;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class ClassDeclr implements TypeDeclr {
    private ArrayList<Symbol> modifiers;
    private String name;
    private ArrayList<String> canonicalID;
    private ArrayList<String> parentClass;
    private ArrayList<ArrayList<String>> interfaces;
    private ArrayList<ConstructorDeclr> constructor;
    private ArrayList<FieldDeclr> fields;
    private ArrayList<MethodDeclr> methods;
    private ArrayList<ClassBodyDeclr> classBodyDeclrNodes;
    private ClassEnv env;

    public ClassDeclr(ClassDeclrNode node) {
        modifiers = node.getClassModifiers();
        parentClass = node.getParentClassIdentifier();
        interfaces = node.getInterfaceTypes();
        name = node.getName();
        constructor = node.getConstructor().stream().map(ConstructorDeclr::new)
                .collect(Collectors.toCollection(ArrayList::new));
        fields = node.getFields().stream().map(FieldDeclr::new)
                .collect(Collectors.toCollection(ArrayList::new));
        methods = node.getMethods().stream().map(MethodDeclr::new)
                .collect(Collectors.toCollection(ArrayList::new));
        classBodyDeclrNodes = node.getClassBodyDeclrNodes().stream().map(ClassBodyDeclr::convertClassBodyDeclrNode)
                .collect(Collectors.toCollection(ArrayList::new));
    }

    @Override
    public void buildCanonicalName(ArrayList<String> packageName) {
        canonicalID = new ArrayList<>(packageName);
        canonicalID.add(name);
    }

    @Override
    public ArrayList<Symbol> getModifiers() {
        return modifiers;
    }

    public ArrayList<ClassBodyDeclr> getClassBodyDeclrNodes() {
        return classBodyDeclrNodes;
    }

    @Override
    public ArrayList<MethodDeclr>  getMethods(){
        return methods;
    }

    public ArrayList<ConstructorDeclr> getConstructor() {
        return constructor;
    }

    @Override
    public ArrayList<ArrayList<String>> getParentInterfaces() {
        return interfaces;
    }

    public ArrayList<FieldDeclr> getFields() {
        return fields;
    }

    public ArrayList<String> getParentClass() {
        return parentClass;
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
}
