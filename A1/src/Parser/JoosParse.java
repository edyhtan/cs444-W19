package Parser;

import Exceptions.InvalidSyntaxException;
import Token.Token;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import java.io.*;
import java.util.*;


public class JoosParse {
    private List<String> JoosGrammar;
    private List<String> terminals;
    private List<String> nonterminals;
    private String start;
    private List<Rule> rules;
    private List<List<Transition>> transitions;
    private ParseTree tree;

    // constants
    public static Token BOF = new Token("BOF", "BOF");
    public static Token EOF = new Token("EOF", "EOF");
    public static Token EMPTY_TOKEN = new Token("", "");
    public static Token ERROR_TOKEN = new Token("ERROR", "ERROR");
    public static Transition ACCEPT_STATE = new Transition("", "ACCEPT", -1);
    public static Transition ERROR_STATE = new Transition("", "ERROR", -1);
    public static Rule EMPTY_RULE = new Rule("", new ArrayList<>());

    public JoosParse(String filename) throws IOException {
        File file = new File(filename);
        BufferedReader reader = new BufferedReader(new FileReader((file)));
        String line;
        JoosGrammar = new ArrayList<>();
        while ((line = reader.readLine()) != null) {
            JoosGrammar.add(line);
        }
        tree = new ParseTree("", new ArrayList<>());

        Iterator<String> it = JoosGrammar.iterator();

        terminals = readSymbol(it);
        nonterminals = readSymbol(it);
        start = it.next().trim();
        rules = readRules(it);
        transitions = readTransitions(it);
    }

    public ParseTree getTree() {
        return tree;
    }

    public void printGrammar() {
        System.out.println("terminals:");
        System.out.println(terminals);
        System.out.println("nonterminals:");
        System.out.println(nonterminals);
        System.out.print("start: ");
        System.out.println(start);
        System.out.println("rules:");
        for(Rule r : rules) r.print();
        System.out.println("transitions:");
        for(int i = 0; i< transitions.size(); ++i) {
            System.out.println("from state " + i + ":");
            for(Transition t: transitions.get(i)) t.print();
        }
    }

    public void parse(List<Token> tokens) throws InvalidSyntaxException {
        Stack<Token> unreadStack = new Stack<>();
        unreadStack.push(EMPTY_TOKEN);

        // adding BOF and EOF to tokens
        tokens.add(0, BOF);
        tokens.add(tokens.size() - 1, EOF);

        // reverse the list before pushing to unreadStack
        Collections.reverse(tokens);
        for (Token t : tokens) {
            unreadStack.push(t);
        }

        Stack<Integer> stateStack = new Stack<>();
        Stack<String> mainStack = new Stack<>();
        mainStack.push("");

        ParseTree tree = buildTree(terminals, nonterminals, start, rules, transitions, unreadStack, stateStack, mainStack);

        if (!tree.getSymbol().equals("ERROR")) {
            tree.print(terminals);
            this.tree = tree;
        }

    }

    private List<String> readSymbol(Iterator<String> in) {
        assert (in.hasNext());

        // read the number of symbols
        int numSym = Integer.valueOf(in.next().replace('\n', ' ').trim());
        List<String> symbol = new ArrayList<>();

        // read symbols on each line
        for (int i = 1; i <= numSym; ++i) {
            symbol.add(in.next().trim());
        }

        return symbol;
    }

    private List<Rule> readRules(Iterator<String> in) {
        assert (in.hasNext());

        int numRule = Integer.valueOf(in.next().replace('\n', ' ').trim());

        List<Rule> rules = new ArrayList<>();

        for (int i = 1; i <= numRule; ++i) {
            List<String> rhs = new ArrayList<>(Arrays.asList(in.next().split(" ")));
            String lhs = rhs.get(0);
            rhs.remove(0);
            Rule r = new Rule(lhs, rhs);
            rules.add(r);
        }

        return rules;
    }

    private List<List<Transition>> readTransitions(Iterator<String> in) {
        assert (in.hasNext());

        int numState = Integer.valueOf(in.next().replace('\n', ' ').trim());

        // set initial state to ACCEPT, after processing, the last state will have action ACCEPT
        // outer array is indexed by current state (i.e., 1st number in transition table)
        List<List<Transition>> transitions = new ArrayList<>(numState);

        for (int i = 0; i < numState; ++i) {
            transitions.add(i, new ArrayList<>(Arrays.asList(ACCEPT_STATE)));
        }

        int numTrans = Integer.valueOf(in.next().replace('\n', ' ').trim());

        for (int i = 1; i <= numTrans; ++i) {
            String[] temp = in.next().split(" ");
            int from = Integer.valueOf(temp[0]);
            String input = temp[1];
            String action = temp[2];
            int next = Integer.valueOf((temp[3]));

            Transition t = new Transition(input, action, next);
            // replace default state
            if (transitions.get(from).get(0) == ACCEPT_STATE) {
                transitions.set(from, new ArrayList<>(Arrays.asList(t)));
            } else {
                transitions.get(from).add(t);
            }
        }

        return transitions;
    }

    private Transition searchState(List<Transition> states, String input) {
        for (Transition s : states) {
            if (s.getInput().equals(input)) return s;
        }
        return ERROR_STATE;
    }

    private Rule searchRule(List<Rule> rules, String key) {
        for (Rule r : rules) {
            if (r.getLhs().equals(key)) return r;
        }
        return EMPTY_RULE;
    }

    private ParseTree buildTree(List<String> terminals, List<String> nonterminals, String start, List<Rule> rules,
                                List<List<Transition>> transitions, Stack<Token> unreadStack, Stack<Integer> stateStack,
                                Stack<String> mainStack) throws InvalidSyntaxException {
        // counter
        int i = 0;

        Stack<ParseTree> treeStack = new Stack<>();

        int curState = 0;

        // init input
        Token inputToken = unreadStack.pop();
        String input = inputToken.getKind();

//        Rule startRule = searchRule(rules, start);

        ParseTree tree = new ParseTree("", new ArrayList<>());
        boolean check = true;
        List<ParseTree> children; // = new ArrayList<>();

        while (check) {
            // push current state to stateStack
            stateStack.push(curState);

            // find current transition
            Transition curTrans = searchState(transitions.get(curState), input);

            switch (curTrans.getAction()) {
                case "reduce":
                    Rule rule = rules.get(curTrans.getTo());
                    int popCount = rule.getRhs().size();

                    for (int j = 1; j <= popCount; ++j) {
                        // pop reduced symbols from mainStack
                        mainStack.pop();
                        // pop stateStack
                        stateStack.pop();
                    }

                    // push new symbol to mainStack
                    mainStack.push(rule.getLhs());

                    children = new ArrayList<>();
                    for (int j = 1; j <= popCount; ++j) {
                        children.add(treeStack.pop());
                    }
                    Collections.reverse(children);
                    // push to treeStack
                    treeStack.push(new ParseTree(rule.getLhs(), children));

                    curState = stateStack.pop();

                    // reset input
                    unreadStack.push(inputToken);
                    input = mainStack.peek();

                    // reset counter
                    i--;
                    break;

                case "shift":
                    // push to treeStack, no children
                    if (terminals.contains(input)) {
                        ParseTree item = new ParseTree(inputToken.getKind(),
                                Arrays.asList(new ParseTree(inputToken.getLexeme(), new ArrayList<>())));
                        treeStack.push(item);
                    }

                    curState = curTrans.getTo();

                    mainStack.push(input);
                    inputToken = unreadStack.pop();
                    input = inputToken.getKind();

                    i++;
                    break;

                case "ERROR":
                    check = false;
                    // reject and output ERROR
//                    tree = new ParseTree("ERROR", new ArrayList<>());
                    throw new InvalidSyntaxException(i);

                case "ACCEPT":
                    check = false;
                    int treeSize = treeStack.size();
                    children = new ArrayList<>();
                    for (int j = 1; j <= treeSize; ++j) {
                        children.add(treeStack.pop());
                    }
                    Collections.reverse(children);
                    tree = new ParseTree("start", children);
            }
        }

        return tree;
    }

    public List<List<Transition>> getTransitions() {
        return transitions;
    }

    public List<String> getNonterminals() {
        return nonterminals;
    }

    public List<Rule> getRules() {
        return rules;
    }


}
