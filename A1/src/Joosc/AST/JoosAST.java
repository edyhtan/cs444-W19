package Joosc.AST;

import Joosc.AST.ASTStructures.Program;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

public class JoosAST {
    private Program root;

    public JoosAST(ParseTree parseTree) throws ASTException {
        if (parseTree.getKind() != Symbol.S) {
            throw new InvalidParseTreeStructureException(parseTree, "Expecting S, got " + parseTree.getKind() + ".");
        }
        root = new Program(parseTree);
    }

    public void weed() throws WeedingFailureException {
        root.weed();
    }

    public Program getRoot() {
        return root;
    }

    public void printASTInfo() {
        root.printInfo(0);
    }
}
