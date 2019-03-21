package Joosc.TypeSystem;

import Joosc.ASTBuilding.JoosAST;
import Joosc.ASTModel.Program;
import Joosc.Environment.ClassEnv;
import Joosc.Environment.GlobalEnv;
import Joosc.Exceptions.ASTException;
import Joosc.Joosc;
import Joosc.Parser.JoosParse;
import Joosc.Scanner.JoosScan;
import Joosc.Token.Token;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class ArrayType extends JoosType{
    JoosType joosType;
    public static ClassEnv illusionaryEnv;

    public ArrayType(ClassEnv classEnv) {
        super(classEnv);
        this.joosType = new JoosType(classEnv);
    }

    public ArrayType(JoosType joosType) {
        super(joosType);
        this.joosType = joosType;
    }

    // check primitive types
    public boolean equals(ArrayType arrayType) {
        return this.joosType.getTypeName().equals(arrayType.joosType.typeName);
    }

    public boolean isA(JoosType type) {
        if (type instanceof ArrayType) {
            return this.joosType.isA(((ArrayType)type).joosType);
        }

        return type.equals(getJoosType(new ArrayList<>(Arrays.asList("java", "lang", "Object"))))
                || type.equals(getJoosType(new ArrayList<>(Arrays.asList("java", "lang", "Cloneable"))))
                || type.equals(getJoosType(new ArrayList<>(Arrays.asList("java", "io", "Serializable"))))
                || type.equals(NULL);
    }

    public ArrayList<String> getTypeName() {
        ArrayList<String> arr = new ArrayList<>(super.getTypeName());
        arr.add("[]");
        return arr;
    }

    public JoosType getJoosType() {
        return joosType;
    }

    public ClassEnv getClassEnv() {
        return illusionaryEnv;
    }

    public static void initIllusion() {
        try {
            JoosScan scan = new JoosScan(new File((Joosc.IDE_FLAG ? "src/" : "") + "Joosc/TypeSystem/ArrayTemplate.java"));
            scan.scan();
            JoosParse parse = new JoosParse();
            parse.parse(scan.getOutput());
            Program p = new Program(new JoosAST(parse.getTree()).getRoot());
            illusionaryEnv = new ClassEnv(p, GlobalEnv.instance);
            illusionaryEnv.semanticAnalysis();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
