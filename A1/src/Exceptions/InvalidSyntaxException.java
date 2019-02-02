package Exceptions;

public class InvalidSyntaxException extends Exception {
    private int location;

    public InvalidSyntaxException(int location) {
        super();
        this.location = location;
    }

    public int getLocation() {
        return location;
    }
}
