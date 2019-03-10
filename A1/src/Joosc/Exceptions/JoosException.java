package Joosc.Exceptions;

public abstract class JoosException extends Exception{
    public JoosException(String msg) {
        super(msg);
    }
    public JoosException() {
        super();
    }
}
