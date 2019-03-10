package Joosc.Exceptions;

import Joosc.Token.Token;

import java.util.ArrayList;

public class InvalidTokenException extends JoosException{
    private final String lexeme;
    private ArrayList<Token> tokens;
    private char curChar;

    public InvalidTokenException(String lexeme, ArrayList<Token> tokens, char curChar) {
        super();
        this.lexeme = lexeme;
        this.tokens = tokens;
        this.curChar = curChar;
    }

    public String getInvalidLexeme() {
        return lexeme;
    }

    public void printExistingTokens() {
        String output = "";
        for (Token token: tokens) {
            if (output.length() == 0) {
                output = token.getLexeme();
            } else {
                output = String.format("%s, %s", output, token.getLexeme());
            }
        }
        System.err.println(output);
    }

    public char getCurChar() {
        return curChar;
    }
}
