package Joosc.AST.ASTStructures;

import Joosc.Parser.LRGrammar.ParseTree;

public class LocalVarDeclrStatement extends StatementNode {

    public LocalVarDeclrStatement(ParseTree parseTree) {
        this.parseTree = parseTree;
    }

    @Override
    public void weed() {

    }

    @Override
    public void printInfo(int level) {
        this.printInfoInit("Local Var Declr Statement:", level);
    }
}
