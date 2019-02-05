package Parser;

import Exceptions.InvalidSyntaxException;
import Parser.LRGrammar.*;
import Token.Token;

import java.io.*;
import java.util.*;


public class JoosParse {
    private ParseTree tree;
    private Grammar JoosGrammar;

    public JoosParse() throws FileNotFoundException {
        JoosGrammar = new Grammar();
    }

    public ParseTree getTree() {
        return tree;
    }

    public void printGrammar() {
        JoosGrammar.printGrammar();
    }

    public void parse(List<Token> tokens) throws InvalidSyntaxException {
        ParseTree tree = JoosGrammar.buildTree(tokens);

        if (!tree.getSymbol().equals("ERROR")) {
            tree.print(JoosGrammar.getTerminals());
            this.tree = tree;
        }
    }

}
