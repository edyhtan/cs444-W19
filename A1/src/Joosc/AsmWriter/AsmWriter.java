package Joosc.AsmWriter;

import Joosc.ASTModel.Expressions.Expression;

import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.util.Collections;
import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.InterfaceDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.Environment.ClassEnv;
import Joosc.Environment.GlobalEnv;
import java.util.LinkedHashSet;

public class AsmWriter {
    PrintStream out;
    private static String binaryTemplate = "%s %s, %s";

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
        out.println("extern " + content);
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

    public void call(String label) {
        out.println("call " + label);
    }

    public void ret() {
        out.println("ret");
    }

    public void _int(String addr) {
        out.println("int " + addr);
    }

    public void exit(int retCode) {
        mov(Register.eax, 1);
        mov(Register.ebx, retCode);
        _int("0x80");
    }

    public void mov(String str1, String str2) {
        out.println("mov " + str1 + "," + str2);
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

    public void imal(String str1, String str2) {
        out.println("imal " + str1 + "," + str2);
    }

    public void imal(Register reg1, Register reg2) {
        imal(reg1.toString(), reg2.toString());
    }

    public void imal(Register reg, int i) {
        imal(reg.toString(), Integer.toString(i));
    }

    public void idiv(String str1, String str2) {
        out.println("idiv " + str1 + "," + str2);
    }

    public void idiv(Register reg1, Register reg2) {
        idiv(reg1.toString(), reg2.toString());
    }

    public void idiv(Register reg, int i) {
        idiv(reg.toString(), Integer.toString(i));
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
     * Followed by push caller-save regs on stack
     * */
    public void prologue(int frameSize) {
        push(Register.ebp);
        mov(Register.ebp, Register.esp);
        sub(Register.esp, 12);
    }

    /**
     * After popping callee-save regs
     * */
    public void epilogue() {
        mov(Register.esp, Register.ebp);
        pop(Register.ebp);
        ret();
    }


    public void indent(int num) {
        out.print(String.join("", Collections.nCopies(num, "\t")));
    }

    public void outputInit() {
        out.println("\t" + "global _start");
        out.println("_start:");

        LinkedHashSet<String> allMethods = new LinkedHashSet<>();

        // Create List of All Interface call header
        for (ClassEnv classEnv: GlobalEnv.instance.classEnvs) {
            if (classEnv.getTypeDeclr() instanceof InterfaceDeclr) {
                allMethods.addAll(classEnv.getAllMethodSignature().keySet());
            }
        }

        // Create SIT
        for (ClassEnv classEnv: GlobalEnv.instance.classEnvs) {
            if (classEnv.getTypeDeclr() instanceof ClassDeclr) {
                ClassDeclr classDeclr = (ClassDeclr) classEnv.getTypeDeclr();
                for (String methodName: allMethods) {

                }
            }
        }
    }

}
