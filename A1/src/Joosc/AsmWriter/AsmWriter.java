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
import java.util.Collections;
import java.util.HashSet;


public class AsmWriter {
    public static final boolean COMMENT_FLAG = true;

    PrintStream out;
    private static String binaryTemplate = "%s %s, %s";
    public static ArrayLinkedHashSet<String> allMethods = new ArrayLinkedHashSet<>();
    public static ArrayLinkedHashMap<JoosType, String> parentMatrix = new ArrayLinkedHashMap<>();
    private HashSet<String> externedLabels = new HashSet<>();

    public AsmWriter(PrintStream out) {
        this.out = out;
    }

    public AsmWriter(String outFile) throws FileNotFoundException {
        out = new PrintStream(outFile);
    }

    public void close() {
        if ((out != System.out) && (out != System.err)) {
            out.close();
        }
    }

    public void label(String label) {
        out.println(label + ":");
    }

    public void print(String content) {
        out.print(content);
    }

    public void println(String content) {
        out.println(content);
    }

    public void dd(String content) {
        out.println("dd " + content);
    }

    public void db(String content) {
        out.println("db " + content);
    }

    public void global(String content) {
        out.println("global " + content);
    }

    public void extern(String content) {
        if(!externedLabels.contains(content)) {
            out.println("extern " + content);
            externedLabels.add(content);
        }
    }

    public void align(String bytes) {
        out.println("align " + bytes);
    }

    public void align(int bytes) {
        align(Integer.toString(bytes));
    }

    public void jmp(String label) {
        out.println("jmp " + label);
    }

    public void cmp(String str1, String str2) {
        out.println("cmp " + str1 + "," + str2);
    }

    public void cmp(Register reg1, Register reg2) {
        cmp(reg1.toString(), reg2.toString());
    }

    public void cmp(Register reg, String str) {
        cmp(reg.toString(), str);
    }

    public void je(String label) {
        out.println("je " + label);
    }

    public void jg(String label) {
        out.println("jg " + label);
    }

    public void jae(String label) {
        out.println("jae " + label);
    }

    public void jb(String label) {
        out.println("jb " + label);
    }

    public void ja(String label) {
        out.println("ja " + label);
    }

    public void jbe(String label) {
        out.println("jbe " + label);
    }

    public void push(Register reg) {
        out.println("push " + reg.toString());
    }

    public void pop(Register reg) {
        out.println("pop " + reg);
    }

    public void call(String str) {
        out.println("call " + str);
    }

    public void call(Register reg) {
        out.println("call " + reg);
    }

    public void ret() {
        out.println("ret");
    }

    public void _int(String addr) {
        out.println("int " + addr);
    }

    public void exit(String retCode) {
        mov(Register.eax, 1);
        mov(Register.ebx, retCode);
        _int("0x80");
    }

    public void mov(String str1, String str2) {
        out.println("mov " + str1 + ", " + str2);
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
        out.println("add " + str1 + "," + str2);
    }

    public void add(Register reg1, Register reg2) {
        add(reg1.toString(), reg2.toString());
    }

    public void add(Register reg, int i) {
        add(reg.toString(), Integer.toString(i));
    }

    public void sub(String str1, String str2) {
        out.println("sub " + str1 + "," + str2);
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
        out.println(String.format(binaryTemplate, "shr", reg, i));
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
        out.print(String.join("", Collections.nCopies(num, "\t")));
    }

    public void malloc(int size) {
        mov(Register.eax, size);
        extern("__malloc");
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
        out.println("\t" + "global _start");
        out.println("_start:");

        // Create SIT
        for (ClassEnv classEnv: GlobalEnv.instance.classEnvs) {

            if (classEnv.getTypeDeclr() instanceof ClassDeclr) {
                ClassDeclr classDeclr = (ClassDeclr) classEnv.getTypeDeclr();
                classDeclr.buildCompilerLabel();

                out.println();
                malloc(allMethods.size() * 4);

                out.println();
                if (!classEnv.getJoosType().equals(currentType)) {
                    extern(classDeclr.classSIT);
                }
                mov(Register.ebx, classDeclr.classSIT);
                movToAddr(Register.ebx, Register.eax);

                for (String methodName: allMethods) {
                    if (classEnv.methodCallTable.containsKey(methodName)) {
                        String callRef = classEnv.methodCallTable.get(methodName).callReference;
                        out.println();
                        out.print("\t");
                        extern(callRef);
                        out.print("\t");
                        mov(Register.ebx, callRef);
                        out.print("\t");
                        movToAddr("eax + " + allMethods.indexOf(methodName) * 4, Register.ebx);
                    }
                }
            }
        }

        out.println("");

        call("@@@@main");
        mov(Register.ebx, Register.eax);
        mov(Register.eax, 1);
        out.println("int 0x80");

        out.println("");
    }

    public void comment(String cmt) {
        if (COMMENT_FLAG) {
            out.print(";; ");
            out.println(cmt);
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

}
