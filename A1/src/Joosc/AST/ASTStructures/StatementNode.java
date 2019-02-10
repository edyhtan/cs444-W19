package Joosc.AST.ASTStructures;

import Joosc.Parser.LRGrammar.ParseTree;

abstract class StatementNode extends ASTNode {
    protected static StatementNode resolveStatementNode(ParseTree parseTree) {
        return new LocalVarDeclrStatement(parseTree);
    }

    @Override
    abstract void weed();
    @Override
    abstract void printInfo(int level);
}
