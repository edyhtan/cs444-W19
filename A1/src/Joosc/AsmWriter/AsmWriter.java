package Joosc.AsmWriter;

import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.InterfaceDeclr;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.Environment.ClassEnv;
import Joosc.Environment.GlobalEnv;
import Joosc.TypeSystem.JoosType;
import Joosc.util.ArrayLinkedHashMap;
import Joosc.util.ArrayLinkedHashSet;

import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;


public class AsmWriter {
    public static final boolean COMMENT_FLAG = true;

    PrintStream out;
    private static String binaryTemplate = "%s %s, %s";
    public static ArrayLinkedHashSet<String> allMethods = new ArrayLinkedHashSet<>();
    public static ArrayLinkedHashMap<JoosType, String> parentMatrix = new ArrayLinkedHashMap<>();

    public HashSet<String> definedLabels = new HashSet<>();
    public HashSet<String> externedLabels = new HashSet<>();
    public ArrayList<String> buffer = new ArrayList<>();

    public AsmWriter(PrintStream out) {
        this.out = out;
    }

    public AsmWriter(String outFile) throws FileNotFoundException {
        out = new PrintStream(outFile);
    }

    public void close() {
        for(String label : definedLabels) {
            if (externedLabels.contains(label)) {
                externedLabels.remove(label);
            }
        }
        for(String label : externedLabels) {
            out.println("extern " + label);
        }
        out.println();

        for(String seg : buffer) {
            out.print(seg);
        }
        if ((out != System.out) && (out != System.err)) {
            out.close();
        }
    }

    public void label(String label) {
        definedLabels.add(label);
        println(label + ":");
    }

    public void print(String content) {
        buffer.add(content);
    }

    public void println(String content) {
        buffer.add(content + "\n");
    }

    public void println() {
        buffer.add("\n");
    }

    public void dd(String content) {
        println("dd " + content);
    }

    public void db(String content) {
        println("db " + content);
    }

    public void global(String content) {
        println("global " + content);
    }

    public void extern(String content) {
        externedLabels.add(content);
    }

    public void align(String bytes) {
        println("align " + bytes);
    }

    public void align(int bytes) {
        align(Integer.toString(bytes));
    }

    public void jmp(String label) {
        println("jmp " + label);
    }

    public void cmp(String str1, String str2) {
        println("cmp " + str1 + "," + str2);
    }

    public void cmp(Register reg1, Register reg2) {
        cmp(reg1.toString(), reg2.toString());
    }

    public void cmp(Register reg, String str) {
        cmp(reg.toString(), str);
    }

    public void je(String label) {
        println("je " + label);
    }

    public void jne(String label) {
        out.println("jne " + label);
    }

    public void jg(String label) {
        println("jg " + label);
    }

    public void jl(String label) {
        println("jl " + label);
    }

    public void jle(String label) {
        println("jle " + label);
    }

    public void jae(String label) {
        println("jae " + label);
    }

    public void jb(String label) {
        println("jb " + label);
    }

    public void ja(String label) {
        println("ja " + label);
    }

    public void jge(String label) {
        println("jge " + label);
    }

    public void jbe(String label) {
        println("jbe " + label);
    }

    public void push(Register reg) {
        println("push " + reg.toString());
    }

    public void pop(Register reg) {
        println("pop " + reg);
    }

    public void call(String str) {
        println("call " + str);
    }

    public void call(Register reg) {
        println("call " + reg);
    }

    public void ret() {
        println("ret");
    }

    public void _int(String addr) {
        println("int " + addr);
    }

    public void exit(String retCode) {
        mov(Register.eax, 1);
        mov(Register.ebx, retCode);
        _int("0x80");
    }

    public void mov(String str1, String str2) {
        println("mov " + str1 + ", " + str2);
    }

    public void mov(Register reg, String str) {
        mov(reg.toString(), str);
    }

    public void mov(String str, Register reg) {
        mov(str, reg.toString());
    }

    public void mov(Register reg1, Register reg2) {
        mov(reg1.toString(), reg2.toString());
    }

    public void mov(Register reg, int num) {
        mov(reg, Integer.toString(num));
    }

    public void movFromAddr(String str1, String str2) {
        mov(str1, "[" + str2 + "]");
    }

    public void movFromAddr(Register reg1, Register reg2) {
        movFromAddr(reg1.toString(), reg2.toString());
    }

    public void movFromAddr(Register reg, String str) {
        movFromAddr(reg.toString(), str);
    }

    public void movFromAddr(String str, Register reg) {
        movFromAddr(str, reg.toString());
    }

    public void movToAddr(String str1, String str2) {
        mov("[" + str1 + "]", str2);
    }

    public void movToAddr(Register reg1, Register reg2) {
        movToAddr(reg1.toString(), reg2.toString());
    }

    public void movToAddr(String str, Register reg) {
        movToAddr(str, reg.toString());
    }

    public void movToAddr(Register reg, String str) {
        movToAddr(reg.toString(), str);
    }

    public void add(String str1, String str2) {
        out.println("add " + str1 + ", " + str2);
    }

    public void add(Register reg1, Register reg2) {
        add(reg1.toString(), reg2.toString());
    }

    public void add(Register reg, int i) {
        add(reg.toString(), Integer.toString(i));
    }

    public void sub(String str1, String str2) {
        println("sub " + str1 + "," + str2);
    }

    public void sub(Register reg1, Register reg2) {
        sub(reg1.toString(), reg2.toString());
    }

    public void sub(Register reg, int i) {
        sub(reg.toString(), Integer.toString(i));
    }


    public void imul(String str1, String str2) {
        out.println("imul " + str1 + "," + str2);
    }

    public void imul(Register reg1, Register reg2) {
        imul(reg1.toString(), reg2.toString());
    }

    public void imul(Register reg, int i) {
        imul(reg.toString(), Integer.toString(i));
    }

    public void idiv(String str1) {
        out.println("idiv " + str1);
    }

    public void idiv(Register reg) {
        idiv(reg.toString());
    }

    public void getBit(Register reg, int i) {
        println(String.format(binaryTemplate, "shr", reg, i));
    }

    public void iffalse(Expression expression, String label, int indent) {
        indent(indent);
        println(";expression code...");
        expression.codeGen(indent);

        indent(indent);
        cmp(Register.eax, "0");
        indent(indent);
        je(label);
    }

    /**
     * Followed by push caller-save regs(esp, ebp) on stack
     * */
    public void prologue(int indent) {
        indent(indent);
        push(Register.ebp);
        indent(indent);
        mov(Register.ebp, Register.esp);
    }

    /**
     * After popping caller-save regs, ret
     * */
    public void epilogue(int indent) {
        indent(indent);
        mov(Register.esp, Register.ebp);
        indent(indent);
        pop(Register.ebp);
        indent(indent);
        ret();
    }

    public void indent(int num) {
        print(String.join("", Collections.nCopies(num, "\t")));
    }

    public void malloc(int size, int indent) {
        indent(indent);
        mov(Register.eax, size);
        indent(indent);
        extern("__malloc");
        indent(indent);
        call("__malloc");
    }

    private static int pushBit(int ref, int bit) {
        return (ref << 1) | bit;
    }

    public static void initTable() {
        // Create List of All Interface call header
        for (ClassEnv classEnv : GlobalEnv.instance.classEnvs) {
            if (classEnv.getTypeDeclr() instanceof InterfaceDeclr) {
                allMethods.addAll(classEnv.getAllMethodSignature().keySet());
            }
        }

        // Parent Matrix
        for (ClassEnv env: GlobalEnv.instance.classEnvs) {
            parentMatrix.put(env.getJoosType(), "");
        }

        // Compute Marrix
        for (JoosType type: parentMatrix.keySet()) {
            for (JoosType type2: parentMatrix.keySet()) {
                int bit = 0;
                if (type.isA(type2)) {
                    bit = 1;
                }
                String ref = Integer.toString(bit) + parentMatrix.get(type);
                parentMatrix.put(type, ref);
            }
            //System.err.println(parentMatrix.get(type) + " " + type.getTypeName());
        }
    }

    public void callSITFunction(Register reg, String methodSignature, int indent) {
        int offset = allMethods.indexOf(methodSignature);

        indent(indent);
        movFromAddr(reg, reg);
        indent(indent);
        movFromAddr(reg, reg);
        indent(indent);
        movFromAddr(reg, reg + "+"  + Integer.toString(offset*4));
        // call eax
    }

    public void outputInit(JoosType currentType) {
        println("\t" + "global _start");
        println("_start:");

        // Create SIT
        for (ClassEnv classEnv: GlobalEnv.instance.classEnvs) {

            if (classEnv.getTypeDeclr() instanceof ClassDeclr) {
                ClassDeclr classDeclr = (ClassDeclr) classEnv.getTypeDeclr();
                classDeclr.buildCompilerLabel();

                println();
                malloc(allMethods.size() * 4, 0);

                println();
                if (!classEnv.getJoosType().equals(currentType)) {
                    extern(classDeclr.classSIT);
                }
                mov(Register.ebx, classDeclr.classSIT);
                movToAddr(Register.ebx, Register.eax);

                for (String methodName: allMethods) {
                    if (classEnv.methodCallTable.containsKey(methodName)) {
                        String callRef = classEnv.methodCallTable.get(methodName).callReference;
                        println();
                        print("\t");
                        extern(callRef);
                        print("\t");
                        mov(Register.ebx, callRef);
                        print("\t");
                        movToAddr("eax + " + allMethods.indexOf(methodName) * 4, Register.ebx);
                    }
                }
            }
        }

        println("");

        call("@@@@main");
        mov(Register.ebx, Register.eax);
        mov(Register.eax, 1);
        println("int 0x80");

        println("");
    }

    public void comment(String cmt) {
        if (COMMENT_FLAG) {
            print(";; ");
            println(cmt);
        } else {
            println();
        }
    }

    public void evalLHSthenRHS(Expression LHS, Expression RHS, int indent) {
        indent(indent);
        comment("LHS code...");
        LHS.codeGen(indent);
        indent(indent);
        push(Register.eax);
        indent(indent);
        comment("RHS code...");
        RHS.codeGen(indent);
        indent(indent);
        pop(Register.ebx);
    }

    public void compare(Expression LHS, Expression RHS, int indent, String operation, String label, int offset){
        String jumpTo = "."+label + offset;
        String endLabel = ".end_" + label + offset;
        evalLHSthenRHS(LHS, RHS, indent);
        indent(indent);
        cmp(Register.ebx, Register.eax);
        indent(indent);
        if(operation.equals("je")) {
            je(jumpTo);
        } else if(operation.equals("jne")) {
            jne(jumpTo);
        } else if(operation.equals("jge")) {
            jge(jumpTo);
        } else if(operation.equals("jg")) {
            jg(jumpTo);
        } else if(operation.equals("jl")) {
            jl(jumpTo);
        } else if(operation.equals("jle")) {
            jle(jumpTo);
        }
        indent(indent);
        mov(Register.eax, "0");
        indent(indent);
        jmp(endLabel);
        indent(indent);
        label(jumpTo);
        indent(indent + 1);
        mov(Register.eax, "1");
        indent(indent);
        label(endLabel);
    }

}
