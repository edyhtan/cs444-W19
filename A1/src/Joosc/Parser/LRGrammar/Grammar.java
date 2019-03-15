package Joosc.Parser.LRGrammar;

import Joosc.Joosc;
import Joosc.Exceptions.InvalidSyntaxException;
import Joosc.Token.Token;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;

public class Grammar {
    enum Action {
        REDUCE, SHIFT, ERROR;
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
        File file = new File((Joosc.IDE_FLAG ? "src/" : "") + "Joosc/Parser/LRGrammar/grammar.lr1");
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

    private Transition searchTransition(int curState, String input) {
        return transitions.get(curState).getOrDefault(input, ERROR_STATE);
    }

    private String getInput(Token token) {
        String kind = token.getKind();
        return kind.equals("separator") | kind.equals("operator") | kind.equals("keyword") ?
                token.getLexeme() : token.getKind();
    }

    public ParseTree buildTree(List<Token> tokens) throws InvalidSyntaxException {
        LinkedList<Token> inputs = new LinkedList<>(tokens);
        inputs.addFirst(BOF);
        inputs.addLast(EOF);

        Stack<Integer> stateStack = new Stack<>();
        Stack<ParseTree> treeStack = new Stack<>();

        //counter
        int c = 0;
        stateStack.push(0); // current state

        for (Token token: inputs) {
            String strInput = getInput(token);
            Transition nextTrans = searchTransition(stateStack.peek(), strInput);
            while (nextTrans.action == Action.REDUCE) {
                Rule rule = rules.get(nextTrans.to);
                LinkedList<ParseTree> children = new LinkedList<>();
                for (int i = rule.rhs.size(); i > 0 ; i--) {
                    stateStack.pop();
                    children.addFirst(treeStack.pop());
                }

                treeStack.push(new ParseTree(rule.lhs, rule.lhs, children));
                nextTrans = searchTransition(stateStack.peek(), rule.lhs);
                stateStack.push(nextTrans.to);

                nextTrans = searchTransition(stateStack.peek(), strInput);
            }

            treeStack.push(new ParseTree(token.getLexeme(), token.getKind(), new ArrayList<>()));
            if (nextTrans.action == Action.ERROR) {
                throw new InvalidSyntaxException(c, treeStack, stateStack.peek(), strInput);
            }
            c++;
            stateStack.push(nextTrans.to);
        }
        return treeStack.get(1);
    }

    private void printStack(List<Integer> stack) {
        for (int each: stack) {
            System.err.print(each + " ");
        }
        System.err.println();
    }

    private class Rule {
        private String lhs;
        private List<String> rhs;

        Rule(String lhs, List<String> rhs) {
            this.lhs = lhs;
            this.rhs = rhs;
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
            }
        }

        void print() {
            System.out.print(input + " " + action + " " + to + "\n");
        }
    }

}


