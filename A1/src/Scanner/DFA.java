package Scanner;

public interface DFA {
    void next(char c);
    boolean isFinal();
    String getLexeme();
}
