package Scanner;

import java.io.File;
import java.io.FileNotFoundException;
import java.nio.file.FileSystemNotFoundException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Scanner;

public class DFA {
    ArrayList<String> states = new ArrayList<>();
    HashSet<String> finishing = new HashSet<>();
    HashMap<String, HashMap<Character, String>> transitions = new HashMap<>();

    int currentState = 0;

    public DFA() throws FileNotFoundException{
        loadDFA();
    }

    // Read .dfa file
    private void loadDFA() throws FileNotFoundException {
        Scanner scan = new Scanner(new File(("src/Scanner/scanner.dfa")));

    }


}
