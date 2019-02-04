package Parser;

public class Transition {
    private String input;
    private String action;
    private int to;

    Transition(String input, String action, int to) {
        this.input = input;
        this.action = action;
        this.to = to;
    }

    String getAction() {
        return action;
    }

    String getInput() {
        return input;
    }

    public int getTo() {
        return to;
    }

    public void print() {
        System.out.print(input+" " + action + " " + to + "\n");
    }
}
