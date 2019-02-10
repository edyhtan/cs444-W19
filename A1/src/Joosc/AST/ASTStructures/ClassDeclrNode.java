package Joosc.AST.ASTStructures;

import Joosc.AST.ASTStructures.TypeDeclrNode;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Parser.LRGrammar.ParseTree;

public class ClassDeclrNode extends TypeDeclrNode {

    public ClassDeclrNode(ParseTree parseTree) throws InvalidParseTreeStructureException {

    }

    @Override
    public void weed(){ }

    @Override
    public void printInfo(int indent) {}
}
