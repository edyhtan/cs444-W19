package Joosc.ASTModel.ClassInterface;

import Joosc.ASTBuilding.ASTStructures.ClassDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassMember.ClassBodyDeclr;
import Joosc.ASTModel.ClassMember.ConstructorDeclr;
import Joosc.ASTModel.ClassMember.FieldDeclr;
import Joosc.ASTModel.ClassMember.MethodDeclr;
import Joosc.AsmWriter.AsmWriter;
import Joosc.Environment.ClassEnv;
import Joosc.Environment.MethodInfo;
import Joosc.Exceptions.UninitializedVariableException;
import Joosc.Exceptions.UnreachableStatementException;

import java.io.File;
import java.io.FileNotFoundException;
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
        constructor = new ArrayList<>();
        fields = new ArrayList<>();
        methods = new ArrayList<>();

        classBodyDeclrNodes = node.getClassBodyDeclrNodes().stream().map(ClassBodyDeclr::convertClassBodyDeclrNode)
                .collect(Collectors.toCollection(ArrayList::new));

        for (ClassBodyDeclr body : classBodyDeclrNodes) {
            if (body instanceof ConstructorDeclr) {
                constructor.add((ConstructorDeclr) body);
            } else if (body instanceof MethodDeclr) {
                methods.add((MethodDeclr) body);
            } else if (body instanceof FieldDeclr) {
                fields.add((FieldDeclr) body);
            }
        }
    }

    @Override
    public void reachabilityAnalysis() throws UnreachableStatementException {
        for (MethodDeclr method : methods) {
            method.reachabilityAnalysis();
        }
        for (ConstructorDeclr constructorDeclr : constructor) {
            constructorDeclr.reachabilityAnalysis();
        }
    }

    @Override
    public void definiteAssignmentAnalysis() throws UninitializedVariableException {

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
    public ArrayList<MethodDeclr> getMethods() {
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

    @Override
    public ClassEnv getClassEnv() {
        return env;
    }

    //Code Gen
    AsmWriter asmWriter;
    public String classTagName;
    public String classSIT;
    public String classParentMatrix;


    public void buildCompilerLabel() {
        classTagName = "__class_" + String.join("_", getCanonicalName());
        classSIT = "__ref_SIT_" + String.join("_", getCanonicalName());
        classParentMatrix = "__ref_PARENTS_" + String.join("_", getCanonicalName());
    }

    @Override
    public void codeGen(int indent) {
        File output = new File("output/" + String.join("_", getCanonicalName()) + ".s");

        try {
            addWriter(new AsmWriter(output.getPath()));
        } catch (FileNotFoundException e) {
            System.err.println("Cannot create writer");
            System.exit(1);
            // Do Nothing
        }

        buildCompilerLabel();

        // Class Tag
        asmWriter.println("\t" + "global " + classTagName);
        asmWriter.label(classTagName);

        asmWriter.println("");
        asmWriter.println("section .data");
        asmWriter.println("");

        // Class SIT
        asmWriter.println("\t\t" + "global " + classSIT);
        asmWriter.println("\t" + classSIT + ":\t\t" + "dd 0");
        asmWriter.println("");

        // Class Parent Matrix
        asmWriter.println("\t\t" + "global " + classParentMatrix);
        asmWriter.println("\t" + classParentMatrix + ":\t\t" + "dd " + AsmWriter.parentMatrix.get(env.getJoosType()) + "b");
        asmWriter.println("");

        asmWriter.print("\t");
        asmWriter.println("; Methods\t");

        for (MethodInfo info:env.methodCallTable.values()) {
            if (info.external) {
                asmWriter.print("\t\t\t");
                asmWriter.extern(info.callReference);
            }
        }

        for (MethodInfo info:env.methodCallTable.values()) {
            asmWriter.print("\t\t");
            asmWriter.dd(info.external ? info.callReference : info.methodLabel);
        }

        // Fields
        for (FieldDeclr field : fields) {
            field.addWriter(asmWriter);
            if (field.getModifiers().contains(Symbol.Static)) {
                String staticLabel = "__field_" + String.join("_", canonicalID) + "_" + field.getName();
                field.setStaticFieldLabel(staticLabel);

                asmWriter.println("\t\t" + "global " + staticLabel);
                asmWriter.print("\t" + staticLabel);
                asmWriter.println("\t\t" + "dd 0");
                asmWriter.println("");
            }
        }

        // method gen
        asmWriter.println("");
        asmWriter.println("section .text");
        asmWriter.println("");

        for (MethodDeclr method : methods) {
            method.addWriter(asmWriter);
            String methodLabel = env.methodCallTable.get(method.getMethodSignature()).methodLabel;
            method.setMethodLabel(methodLabel);
            method.codeGen(indent + 1);
        }

        // end
        asmWriter.close();
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}