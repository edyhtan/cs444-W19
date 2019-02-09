package Joosc.Exceptions;

import Joosc.Parser.LRGrammar.ParseTree;

public class InvalidParseTreeStructureException extends Exception {
    private ParseTree faultyParseTree;
    private String errMsg;

    public InvalidParseTreeStructureException(ParseTree parseTree, String errMsg) {
        super();
        this.faultyParseTree = parseTree;
        this.errMsg = errMsg;
    }

    public InvalidParseTreeStructureException(ParseTree parseTree, String expects, String gets) {
        super();
        this.faultyParseTree = parseTree;
        this.errMsg = "Expecting: " + expects + " ; Gets: " + gets;
    }

    @Override
    public String getLocalizedMessage() {
        System.err.printf("At node -- %s : %s\n", faultyParseTree.getKind(), faultyParseTree.getSymbol());
        return String.format("Error Message: %s\n", errMsg);
    }
}
