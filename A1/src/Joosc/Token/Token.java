package Joosc.Token;

public class Token {
    private String lexeme;

    /*
      We'll need a more expressive way to describe Kind.
    */
    private String kind;

    public Token(String lexeme, String kind) {
        this.lexeme = lexeme;
        this.kind = kind;
    }

    public String getLexeme() {
        return lexeme;
    }

    public String getKind() {
        return kind;
    }
}

