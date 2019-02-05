package Parser.LRGrammar;

import Exceptions.InvalidSyntaxException;
import Token.Token;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;

public class Grammar {
    enum Action {
        REDUCE, SHIFT, ACCEPT, ERROR;
    }

    private ArrayList<String> terminals;
    private ArrayList<String> nonterminals;
    private String start;
    private ArrayList<Rule> rules;

    // ArrayList index is the current state
    // HashMap key: input string, value: Transition
    private ArrayList<HashMap<String, Transition>> transitions;

    private Transition curTrans;
    private int curState;

    // constants
    private Token BOF = new Token("BOF", "BOF");
    private Token EOF = new Token("EOF", "EOF");
    private Token EMPTY_TOKEN = new Token("", "");
    private Transition ERROR_STATE = new Transition("", "ERROR", -1);

    public Grammar() throws FileNotFoundException {
        initGrammar();
    }

    private void initGrammar() throws FileNotFoundException {
        File file = new File("src/Parser/LRGrammar/sample.lr1");
        Scanner scanner = new Scanner(file);
        String line;
        ArrayList<String> grammar = new ArrayList<>();
        while (scanner.hasNextLine()) {
            line = scanner.nextLine();
            grammar.add(line);
        }

        Iterator<String> it = grammar.iterator();

        terminals = readSymbol(it);
        nonterminals = readSymbol(it);
        start = it.next().trim();
        rules = readRules(it);
        transitions = readTransitions(it);
    }

    public void printGrammar() {
        System.out.println("terminals:");
        System.out.println(terminals);
        System.out.println("nonterminals:");
        System.out.println(nonterminals);
        System.out.print("start: ");
        System.out.println(start);
        System.out.println("rules:");
        for (Rule r : rules) r.print();
        System.out.println("transitions:");
        for (int i = 0; i < transitions.size(); ++i) {
            System.out.println("from state " + i + ":");
            for (Transition t : transitions.get(i).values()) t.print();
        }
    }

    public Action getAction() {
        return curTrans.action;
    }

    public int nextState() {
        return curTrans.to;
    }

    public int getCurState() {
        return curState;
    }

    public ArrayList<HashMap<String, Transition>> getTransitions() {
        return transitions;
    }

    public ArrayList<Rule> getRules() {
        return rules;
    }

    public ArrayList<String> getNonterminals() {
        return nonterminals;
    }

    public ArrayList<String> getTerminals() {
        return terminals;
    }

    private ArrayList<String> readSymbol(Iterator<String> in) {
        assert (in.hasNext());

        // read the number of symbols
        int numSym = Integer.valueOf(in.next().replace('\n', ' ').trim());
        ArrayList<String> symbol = new ArrayList<>();

        // read symbols on each line
        for (int i = 1; i <= numSym; ++i) {
            symbol.add(in.next().trim());
        }

        return symbol;
    }

    private ArrayList<Rule> readRules(Iterator<String> in) {
        assert (in.hasNext());

        int numRule = Integer.valueOf(in.next().replace('\n', ' ').trim());

        ArrayList<Rule> rules = new ArrayList<>();

        for (int i = 1; i <= numRule; ++i) {
            List<String> rhs = new ArrayList<>(Arrays.asList(in.next().split(" ")));
            String lhs = rhs.get(0);
            rhs.remove(0);
            Rule r = new Rule(lhs, rhs);
            rules.add(r);
        }

        return rules;
    }

    private ArrayList<HashMap<String, Transition>> readTransitions(Iterator<String> in) {
        assert (in.hasNext());

        int numState = Integer.valueOf(in.next().replace('\n', ' ').trim());

        ArrayList<HashMap<String, Transition>> transitions = new ArrayList<>(numState);

        for (int i = 0; i < numState; ++i) {
            transitions.add(i, new HashMap<>());
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
            transitions.get(from).put(input, t);
        }

        return transitions;
    }

    private Transition searchState(HashMap<String, Transition> states, String input) {
        for (Map.Entry s : states.entrySet()) {
            if (s.getKey().equals(input)) return (Transition) s.getValue();
        }
        return ERROR_STATE;
    }

    public ParseTree buildTree(List<Token> tokens) throws InvalidSyntaxException {
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

        // counter
        int i = 0;

        Stack<ParseTree> treeStack = new Stack<>();

        curState = 0;

        // init input
        Token inputToken = unreadStack.pop();
        String input = inputToken.getKind();

        ParseTree tree = new ParseTree("", new ArrayList<>());
        boolean check = true;
        Deque<ParseTree> children;
        List<ParseTree> temp;

        while (check) {
            // push current state to stateStack
            stateStack.push(curState);

            // find current transition
            curTrans = searchState(transitions.get(curState), input);

            switch (curTrans.getAction()) {
                case REDUCE:
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

                    children = new ArrayDeque<>();
                    for (int j = 1; j <= popCount; ++j) {
                        children.addFirst(treeStack.pop());
                    }

                    temp = Arrays.asList(children.toArray(new ParseTree[children.size()]));
                    // push to treeStack
                    treeStack.push(new ParseTree(rule.getLhs(), temp));

                    curState = stateStack.pop();

                    // reset input
                    unreadStack.push(inputToken);
                    input = mainStack.peek();

                    // reset counter
                    i--;
                    break;

                case SHIFT:
                    // push to treeStack, no children
                    if (terminals.contains(input)) {
                        ParseTree item = new ParseTree(inputToken.getKind(),
                                Collections.singletonList(new ParseTree(inputToken.getLexeme(), new ArrayList<>())));
                        treeStack.push(item);
                    }

                    curState = curTrans.getTo();

                    mainStack.push(input);
                    inputToken = unreadStack.pop();
                    input = inputToken.getKind();

                    i++;
                    break;

                case ERROR:
                    check = false;
                    throw new InvalidSyntaxException(i);

                case ACCEPT:
                    check = false;
                    int treeSize = treeStack.size();
                    children = new ArrayDeque<>();
                    for (int j = 1; j <= treeSize; ++j) {
                        children.addFirst(treeStack.pop());
                    }
                    temp = Arrays.asList(children.toArray(new ParseTree[children.size()]));
                    tree = new ParseTree("start", temp);
            }
        }

        return tree;
    }

    private class Rule {
        private String lhs;
        private List<String> rhs;

        Rule(String lhs, List<String> rhs) {
            this.lhs = lhs;
            this.rhs = rhs;
        }

        String getLhs() {
            return lhs;
        }

        List<String> getRhs() {
            return rhs;
        }

        void print() {
            System.out.print(lhs + " ");
            if (!rhs.isEmpty()) {
                for (String rh : rhs) {
                    System.out.print(rh);
                }
            }
            System.out.print("\n");
        }
    }

    private class Transition {
        private String input;
        private Action action;
        private int to;

        Transition(String input, String action, int to) {
            this.input = input;
            this.to = to;
            switch (action) {
                case "shift":
                    this.action = Action.SHIFT;
                    break;
                case "reduce":
                    this.action = Action.REDUCE;
                    break;
                case "ERROR":
                    this.action = Action.ERROR;
                    break;
                case "ACCEPT":
                    this.action = Action.ACCEPT;
            }
        }

        Action getAction() {
            return action;
        }

        String getInput() {
            return input;
        }

        int getTo() {
            return to;
        }

        void print() {
            System.out.print(input + " " + action + " " + to + "\n");
        }
    }

}


