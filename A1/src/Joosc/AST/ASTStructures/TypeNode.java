package Joosc.AST.ASTStructures;

import Joosc.Parser.LRGrammar.ParseTree;

abstract class TypeNode extends ASTNode {

    protected static TypeNode resolveTypeNode(ParseTree parseTree) {
        return new PrimitiveTypeNode(parseTree);
    }

    @Override
    abstract void weed();
    @Override
    abstract void printInfo(int level);
}
