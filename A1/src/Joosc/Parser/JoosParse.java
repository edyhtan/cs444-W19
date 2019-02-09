package Joosc.Parser;

import Joosc.Exceptions.InvalidParseTreeException;
import Joosc.Parser.LRGrammar.*;
import Joosc.Token.Token;

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

    public void parse(List<Token> tokens) throws InvalidParseTreeException, Exception {
        ParseTree tree = JoosGrammar.buildTree(tokens);

        if (!tree.getSymbol().equals("ERROR")) {
            tree.print();
            this.tree = tree;
        }

        preASTWeeding(tree);
    }

    // this has to be done explicitly
    private void preASTWeeding(ParseTree tree) throws InvalidParseTreeException {
        if (tree.getLexeme().equals("CastExpression") && tree.getChildren().get(1).getLexeme().equals("Expression")) {
            nameOnlyExpression(tree.getChildren().get(1));
        } else {
            for (ParseTree node: tree.getChildren()) {
                preASTWeeding(node);
            }
        }
    }

    private void nameOnlyExpression(ParseTree tree) throws InvalidParseTreeException {
        if (tree.getChildren().size() > 1) {
            if (!tree.getLexeme().equals("Name")) {
                throw new InvalidParseTreeException("Bad Casting");
            }
        } else {
            if (tree.getLexeme().equals("Name")) {
                return;
            }
            for (ParseTree node:tree.getChildren()) {
                nameOnlyExpression(node);
            }
        }
    }
}
