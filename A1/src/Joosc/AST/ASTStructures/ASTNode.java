package Joosc.AST.ASTStructures;

import Joosc.Parser.LRGrammar.ParseTree;

abstract class ASTNode {
    protected ParseTree parseTree;
    protected static final String TREEITEM = "|--";
    protected static final String TREELEVEL = "|  ";
    protected static final String TREESPACE = "   ";

    abstract void weed();
    abstract void printInfo(int level);
}
