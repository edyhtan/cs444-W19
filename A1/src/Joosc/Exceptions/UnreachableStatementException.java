package Joosc.Exceptions;

public class UnreachableStatementException extends Exception {
    public UnreachableStatementException(String msg) {
        super(msg);
    }
    public UnreachableStatementException() {
        super("Unreachable Statement");
    }
}
