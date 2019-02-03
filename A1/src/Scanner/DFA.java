package Scanner;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;

public class DFA {
    private HashMap<String, Integer> states = new HashMap<>();
    private HashMap<Integer, String> kinds = new HashMap<>();
    private HashSet<Integer> finalStates = new HashSet<>();
    private ArrayList<ArrayList<Integer>> transitions;
    private ArrayList<String> stateNames = new ArrayList<>();
    private HashSet<String> keywordSets = new HashSet<>();

    private int currentState = 0;

    private String lexeme = "";

    DFA() throws FileNotFoundException {
        loadDFA();
        loadKeyword();
    }

    private void loadKeyword() throws FileNotFoundException {
        Scanner scan = new Scanner(new File("src/Scanner/keywords.txt"));

        while (scan.hasNextLine()) {
            keywordSets.add(scan.nextLine());
        }
    }

    // Read .dfa file
    private void loadDFA() throws FileNotFoundException {
        Scanner scan = new Scanner(new File("src/Scanner/lexer.dfa"));

        // All states
        Scanner scanLine = new Scanner(getLine(scan));
        int numOfState = scanLine.nextInt();
        int cur = 0;

        while (cur < numOfState && scan.hasNextLine()) {
            scanLine = new Scanner(getLine(scan));
            String state = scanLine.next();

            states.put(state, cur);
            stateNames.add(state);
            cur++;
        }

        // Final States
        scanLine = new Scanner(getLine(scan));
        int numOfFinal = scanLine.nextInt();
        cur = 0;

        while (cur < numOfFinal && scan.hasNextLine()) {
            scanLine = new Scanner(getLine(scan));
            String state = scanLine.next();
            finalStates.add(states.get(state));
            kinds.put(states.get(state), state);
            cur++;
        }

        // Transition Table
        scanLine = new Scanner(getLine(scan));
        int numOfTrans = scanLine.nextInt();
        cur = 0;

        transitions = new ArrayList<>();
        for (int i = 0; i < states.size(); i++) {
            transitions.add(new ArrayList<>(Collections.nCopies(128, -1)));
        }

        while (cur < numOfTrans) {
            String[] line = getLine(scan).split(" ");
            if (line.length == 3) {
                 int preState = states.get(line[0]);
                 int nextState = states.get(line[2]);
                 char transitionChar = getTransitionChar(line[1]);
                 transitions.get(preState).set(transitionChar, nextState);
            } else if (line.length == 4) {
                 int preState = states.get(line[0]);
                 int nextState = states.get(line[3]);
                 char lower = getTransitionChar(line[1]);
                 char upper = getTransitionChar(line[2]);
                 for (; lower <= upper ; lower++ ) {
                     transitions.get(preState).set(lower, nextState);
                 }
            }
            cur++;
        }
    }

    private char getTransitionChar(String str) {
        if (str.length() == 1) {
            return str.charAt(0);
        } else if (str.length() == 3) {
            return (char) Integer.parseInt(str);
        } else {
            return 0;
        }
    }

    private String getLine(Scanner scan) {
        return !scan.hasNextLine() ? " " : scan.nextLine();
    }

    public int getState() {
        return currentState;
    }

    // expensive, use wisely.
    public String getStateName() {
        return currentState == -1 ? "error" : stateNames.get(currentState);
    }

    public String getKind() {
        if (kinds.get(currentState).equals("id_keyword")) {
            return keywordSets.contains(lexeme) ? "keyword" : "identifier";
        }
        return kinds.get(currentState).split("\\$")[0];
    }


    public String getKind(int state) {
        if (state == -1) {
            return "error";
        }
        if (kinds.get(state).equals("id_keyword")) {
            return keywordSets.contains(lexeme) ? "keyword" : "identifier";
        }
        return kinds.get(state).split("\\$")[0];
    }

    public boolean isFinal() {
        return finalStates.contains(currentState);
    }

    public boolean isErr() {
        return currentState == -1;
    }

    public void next(char input) {
        currentState = transitions.get(currentState).get(input);
        lexeme += input;
    }

    public String getLexeme() {
        return lexeme;
    }

    public void reset() {
        currentState = 0;
        lexeme = "";
    }

    // cut the lexeme into two piece based on the prefix, return its suffix
    public String breakLexeme(String prefix) {
        return lexeme.substring(prefix.length());
    }
}
