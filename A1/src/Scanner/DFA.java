package Scanner;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;

public class DFA {
    private HashMap<String, Integer> states = new HashMap<>();
    private HashMap<Integer, String> kinds = new HashMap<>();
    private HashSet<Integer> finalStates = new HashSet<>();
    private ArrayList<ArrayList<Integer>> transitions;
    private int currentState = 0;

    private HashSet<String> keywordSets = new HashSet<>();

    private String lexeme = "";

    public DFA() throws FileNotFoundException {
        loadDFA();
        loadKeywords();
    }

    private void loadKeywords() throws FileNotFoundException {
        Scanner scan = new Scanner(new File(("src/Scanner/keywords.txt")));

        while (scan.hasNextLine()) {
            keywordSets.add(scan.nextLine());
        }
    }

    // Read .dfa file
    private void loadDFA() throws FileNotFoundException {
        Scanner scan = new Scanner(new File(("src/Scanner/scanner.dfa")));

        // All states
        Scanner scanLine = new Scanner(getLine(scan));
        int numOfState = scanLine.nextInt();
        int cur = 0;

        while (cur < numOfState && scan.hasNextLine()) {
            scanLine = new Scanner(getLine(scan));
            String state = scanLine.next();
            states.put(state, cur);
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
                 transitions.get(preState).set(line[1].charAt(0), nextState);
            } else if (line.length == 4) {
                 int preState = states.get(line[0]);
                 int nextState = states.get(line[3]);
                 char lower = line[1].charAt(0);
                 char upper = line[2].charAt(0);

                 for (; lower <= upper ; lower++ ) {
                     transitions.get(preState).set(lower, nextState);
                 }
            }
            cur++;
        }
    }

    private String getLine(Scanner scan) {
        return !scan.hasNextLine() ? " " : scan.nextLine();
    }

    public int getState() {
        return currentState;
    }

    public String getKind() {
        String kind = kinds.get(currentState).split("\\$")[0];
        if (kind.equals("id_keyword")) {
            kind = keywordSets.contains(kind) ? "identifier" : "keyword";
        }

        return kind;
    }

    public String getKind(int state) {
        String kind = kinds.get(state).split("\\$")[0];

        if (kind.equals("id_keyword")) {
            kind = keywordSets.contains(kind) ? "keyword" : "identifier";
        }

        return kind;
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
