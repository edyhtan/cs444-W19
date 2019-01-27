package Token;

public class Token {
    private String lexeme;
    private String kind;

    public Token(String lexeme) {
        this.lexeme = lexeme;
    }

    public String getLexeme() {
        return lexeme;
    }
}

