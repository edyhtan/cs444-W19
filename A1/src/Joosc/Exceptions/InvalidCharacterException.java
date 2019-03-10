package Joosc.Exceptions;

public class InvalidCharacterException extends JoosException {
    private final char invalidChar;

    public InvalidCharacterException(char invalidChar) {
        super();
        this.invalidChar = invalidChar;
    }

    public char getInvalidChar() {
        return invalidChar;
    }
}
