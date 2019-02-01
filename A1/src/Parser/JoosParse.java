package Parser;

import Token.Token;
import java.util.*;


public class JoosParse {
    Token BOF = new Token("BOF", "BOF");
    Token EOF = new Token("EOF", "EOF");
    Token emptyToken = new Token("", "");
    Token errorToken = new Token("ERROR", "ERROR");
    Transition accState = new Transition("", "ACCEPT", -1);
    Transition errState = new Transition("", "ERROR", -1);
    Rule emptyRule = new Rule("", new ArrayList<>()) ;

    public JoosParse() {
        // TODO
    }

    public List<String> readSymbol(Iterator<String> in) {
        assert(in.hasNext());

        // read the number of symbols
        int numSym = Integer.valueOf(in.next().replace('\n', ' ').trim());
        List<String> symbol = new ArrayList<>();

        // read symbols on each line
        for(int i = 1; i <= numSym; ++i) {
            symbol.add(in.next().trim());
        }

        return symbol;
    }

    public List<Rule> readRules(Iterator<String> in) {
        assert(in.hasNext());

        int numRule = Integer.valueOf(in.next().replace('\n', ' ').trim());

        List<Rule> rules = new ArrayList<>();

        for(int i = 1; i <= numRule; ++i) {
            List<String> rhs = Arrays.asList(in.next().split(" "));
            String lhs = rhs.get(0);
            rhs.remove(0);
            Rule r = new Rule(lhs, rhs);
            rules.add(r);
        }

        return rules;
    }

    public List<List<Transition>> readTransitions(Iterator<String> in) {
        assert(in.hasNext());

        int numState = Integer.valueOf(in.next().replace('\n', ' ').trim());

        // set initial state to ACCEPT, after processing, the last state will have action ACCEPT
        // outer array is indexed by current state (i.e., 1st number in transition table)
        List<List<Transition>> transitions = new ArrayList<>(numState);
        for (int i = 0; i < numState; ++i) {
            transitions.set(i,  Arrays.asList(accState));
        }

        int numTrans = Integer.valueOf(in.next().replace('\n', ' ').trim());

        for(int i = 1; i <= numTrans; ++i) {
            String[] temp = in.next().split(" ");
            int from = Integer.valueOf(temp[0]);
            String input = temp[1];
            String action = temp[2];
            int next = Integer.valueOf((temp[3]));

            Transition t = new Transition(input, action, next);
            // replace default state
            if(transitions.get(from).get(0) == accState) {
                transitions.set(from, Arrays.asList(t));
            } else {
                transitions.get(from).add(t);
            }
        }

        return transitions;
    }

    public Transition searchState(List<Transition> states, String input) {
        for(Transition s : states) {
            if(s.getInput().equals(input)) return s;
        }
        return errState;
    }

    public Rule searchRule(List<Rule> rules, String key) {
        for(Rule r : rules) {
            if(r.getRhs().equals(key)) return r;
        }
        return emptyRule;
    }

}
