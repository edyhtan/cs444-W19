package Exceptions;

public class InvalidTokenException extends Exception{
    private final String lexeme;

    public InvalidTokenException(String lexeme) {
        super();
        this.lexeme = lexeme;
    }

    public String getInvalidLexeme() {
        return lexeme;
    }
}
