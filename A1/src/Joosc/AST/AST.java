package Joosc.AST;

import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Parser.LRGrammar.ParseTree;

public class AST {
    private SNode root;
    public AST(ParseTree parseTree) throws InvalidParseTreeStructureException {
        if (!parseTree.getKind().equals("S")) {
            throw new InvalidParseTreeStructureException(parseTree, "Expecting S, got " + parseTree.getKind() + ".");
        }
        root = new SNode(parseTree);
    }
    public SNode getRoot() {
        return root;
    }
}
