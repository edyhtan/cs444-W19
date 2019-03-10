package Joosc.Parser;

import Joosc.ASTBuilding.Constants.Symbol;
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

    public void parse(List<Token> tokens) throws InvalidParseTreeException, Exception {
        ParseTree tree = JoosGrammar.buildTree(tokens);

        if (!tree.getSymbol().equals("ERROR")) {
            //tree.print();
            this.tree = tree;
        }

        preASTWeeding(tree);
    }

    // this has to be done explicitly
    private void preASTWeeding(ParseTree tree) throws InvalidParseTreeException {
        if (tree.getLexeme().equals("CastExpression") && tree.getChildren().get(1).getLexeme().equals("Expression")) {
            nameOnlyExpression(tree.getChildren().get(1));
        } else if (tree.getKind() == Symbol.IntLiteral) {
            long literal = Long.parseLong(tree.getLexeme());
            if (literal > Integer.MAX_VALUE) {
                throw new InvalidParseTreeException("Overflow Literal");
            }
        } else if (tree.getChildren().size() >= 3 && tree.getChildren().get(1).getKind() == Symbol.Instanceof){
            if (getPrimaryNull(tree.getChildren().get(2))) {
                throw new InvalidParseTreeException("instance of null");
            } else {
                for (ParseTree node: tree.getChildren()) {
                    preASTWeeding(node);
                }
            }
        }  else if (tree.getKind() == Symbol.UnaryExpression && tree.getChildren().get(0).getKind() == Symbol.Minus) {
            long literal = getPrimaryLiteral(tree.getChildren().get(1));
            if (literal > -((long) Integer.MIN_VALUE)) {
                throw new InvalidParseTreeException("Overflow Literal");
            } else if (literal == -1) {
                for (ParseTree node: tree.getChildren()) {
                    preASTWeeding(node);
                }
            }
        } else {
            for (ParseTree node: tree.getChildren()) {
                preASTWeeding(node);
            }
        }
    }

    private boolean getPrimaryNull(ParseTree tree) {
        if (tree.getKind() == Symbol.Null) {
            return true;
        } if (tree.getChildren().size() != 1) {
            return false;
        } else {
            return getPrimaryNull(tree.getChildren().get(0));
        }
    }

    // return -1 if it is not a int literal
    private long getPrimaryLiteral(ParseTree tree) {
        if (tree.getKind() == Symbol.IntLiteral) {
            return Long.parseLong(tree.getLexeme());
        } if (tree.getChildren().size() != 1) {
            return -1;
        } else {
            return getPrimaryLiteral(tree.getChildren().get(0));
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
