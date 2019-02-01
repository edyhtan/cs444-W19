package Parser;

public class Transition {
    private String input;
    private String action;
    private int to;

    public Transition(String input, String action, int to) {
        this.input = input;
        this.action = action;
        this.to = to;
    }

    public String getAction() {
        return action;
    }

    public String getInput() {
        return input;
    }

    public int getTo() {
        return to;
    }
}
