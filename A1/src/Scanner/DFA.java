package Scanner;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Scanner;

public class DFA {
    private HashMap<String, Integer> states = new HashMap<>();
    private HashSet<Integer> finishing = new HashSet<>();
    private HashMap<Integer, HashMap<Character, Integer>> transitions = new HashMap<>();
    private int startScanner = 0;
    private int currentState = 0;

    public DFA() throws FileNotFoundException {
        loadDFA();
    }

    // Read .dfa file
    private void loadDFA() throws FileNotFoundException {
        Scanner scan = new Scanner(new File(("src/Scanner/scanner.dfa")));

        Scanner scanLine = new Scanner(getLine(scan));
        int numOfState = scanLine.nextInt();
        int cur = 0;

        while (cur < numOfState && scan.hasNextLine()) {
            System.out.printf("%d %d \n", numOfState, cur);
            scanLine = new Scanner(getLine(scan));
            String state = scanLine.next();
            states.put(state, cur);
            cur++;
        }

        scanLine = new Scanner(getLine(scan));
        int numOfFinishing = scanLine.nextInt();
        cur = 0;

        while (cur < numOfFinishing && scan.hasNextLine()) {
            scanLine = new Scanner(getLine(scan));
            String state = scanLine.next();
            finishing.add(states.get(state));
            cur++;
        }

        System.out.println("2");

        scanLine = new Scanner(getLine(scan));
        int numOfTrans = scanLine.nextInt();
        cur = 0;

        // set all state transition to null
        for (int i = 0; i < states.size(); i++) {
            transitions.put(i, new HashMap<>());
            for (int j = 0 ; j <= 127 ; j++ ) {
                transitions.get(i).put((char) j, -1);
            }
        }

        while (cur < numOfTrans) {
            String[] line = getLine(scan).split(" ");
            if (line.length == 3) {
                 int preState = states.get(line[0]);
                 int nextState = states.get(line[2]);
                 transitions.get(preState).put(line[1].charAt(0), nextState);
            } else if (line.length == 4) {
                 int preState = states.get(line[0]);
                 int nextState = states.get(line[3]);
                 char lower = line[1].charAt(0);
                 char upper = line[2].charAt(0);

                 for (; lower <= upper ; lower++ ) {
                     transitions.get(preState).put(lower, nextState);
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

    public boolean isFinal() {
        return finishing.contains(currentState);
    }

    public boolean isErr() {
        return currentState == -1;
    }

    public void setState(int state) {
        currentState = state;
    }

    public void next(char input) {
        currentState = transitions.get(currentState).get(input);
    }
}
