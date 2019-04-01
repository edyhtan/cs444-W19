package Joosc.AsmWriter;

public enum Register {

    eax("eax"),
    ebx("ebx"),
    ecx("ecx"),
    edx("edx"),
    esi("esi"),
    edi("edi"),

    // stack pointer
    esp("esp"),

    // frame pointer
    ebp("ebp"),

    // program counter
    eip("eip"),

    // segment registers
    cs("cs"),
    ds("ds"),
    es("es"),
    fs("fs"),
    gs("gs"),
    ss("ss");

    String str;

    Register(String str) {
        this.str = str;
    }

}
