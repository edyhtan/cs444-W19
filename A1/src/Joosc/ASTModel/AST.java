package Joosc.ASTModel;

import Joosc.AsmWriter.AsmWriter;

public interface AST {
    void codeGen(int indent);
    void addWriter(AsmWriter writer);
}
