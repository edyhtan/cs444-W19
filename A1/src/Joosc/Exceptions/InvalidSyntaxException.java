package Joosc.Exceptions;

import Joosc.Parser.LRGrammar.ParseTree;
import java.util.List;

public class InvalidSyntaxException extends Exception {
    private int location;
    private List<ParseTree> trees;
    private int state;
    private String input;

    public InvalidSyntaxException(int location, List<ParseTree> trees, int state, String input) {
        super();
        this.location = location;
        this.trees = trees;
        this.state = state;
        this.input = input;
    }

    public int getLocation() {
        return location;
    }

    public int getState() {
        return state;
    }

    public String getInput() {
        return input;
    }

    public void printParseTree() {
        for (ParseTree tree: trees) {
            tree.print();
        }
    }
}
