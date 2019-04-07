package Joosc.ASTModel.ClassInterface;

import Joosc.ASTBuilding.ASTStructures.InterfaceDeclrNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassMember.MethodDeclr;
import Joosc.AsmWriter.AsmWriter;
import Joosc.Environment.ClassEnv;
import Joosc.Exceptions.UninitializedVariableException;

import java.io.File;
import java.io.FileNotFoundException;
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
        buildCompilerLabel();

        File output = new File("output/" + String.join("_", getCanonicalName()) + ".s");

        try {
            addWriter(new AsmWriter(output.getPath()));
        } catch (FileNotFoundException e) {
            System.err.println("Cannot create writer");
            System.exit(1);
            // Do Nothing
        }

        asmWriter.println("");
        asmWriter.println("section .data");
        asmWriter.println("");

        // Class Tag
        asmWriter.println("\t" + "global " + classTagName);
        asmWriter.label(classTagName);

        // Class SIT
        asmWriter.println("\t\t" + "global " + classSIT);
        asmWriter.println("\t" + classSIT + ":\t\t" + "dd 0");
        asmWriter.println("");

        // Class Parent Matrix
        asmWriter.println("\t\t" + "global " + classParentMatrix);
        asmWriter.println("\t" + classParentMatrix + ":\t\t" + "dd " + AsmWriter.parentMatrix.get(env.getJoosType()) + "b");
        asmWriter.println("");
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }

}
