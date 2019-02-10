package Joosc.AST.ASTStructures;

import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Parser.LRGrammar.ParseTree;

abstract class ASTNode {
    protected ParseTree parseTree;

    private void checkParseTreeChildIndex(int index) throws  InvalidParseTreeStructureException {
        if (index >= parseTree.getChildren().size()) {
            String errMsg = "Trying to get child of index:" + index + " out of the parse tree. Out of bound.";
            throw new InvalidParseTreeStructureException(parseTree, errMsg);
        }
    }
    private void checkParseTreeChildKind(ParseTree parseTree, String kind) throws InvalidParseTreeStructureException {
        if (!parseTree.getKind().equals(kind)) {
            String errMsg = "Child should be of kind:" + kind + ", got kind:" + parseTree.getKind() + "in parse tree.";
            throw new InvalidParseTreeStructureException(parseTree, errMsg);
        }
    }
    protected ParseTree getParseTreeChild(int index) throws InvalidParseTreeStructureException{
        checkParseTreeChildIndex(index);
        return parseTree.getChildren().get(index);
    }
    protected ParseTree getParseTreeChild(int index, String kind) throws InvalidParseTreeStructureException {
        ParseTree child = getParseTreeChild(index);
        checkParseTreeChildKind(child, kind);
        return parseTree.getChildren().get(index);
    }

    abstract void weed();
    abstract void printInfo();
}
