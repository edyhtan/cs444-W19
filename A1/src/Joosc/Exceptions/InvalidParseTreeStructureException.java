package Joosc.Exceptions;

import Joosc.Parser.LRGrammar.ParseTree;

public class InvalidParseTreeStructureException extends Exception {
    private ParseTree faultyParseTree;
    private String errMsg;
    private boolean urusaiSwitch = true;    // This switch prints the whole parse tree

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
        if (urusaiSwitch) {
            System.out.printf("At node:\n=========================\n");
            faultyParseTree.print();
        } else {
            System.err.printf("At node -- %s : %s\n", faultyParseTree.getKind(), faultyParseTree.getSymbol());
        }
        return String.format("Error Message: %s\n", errMsg);
    }
}
