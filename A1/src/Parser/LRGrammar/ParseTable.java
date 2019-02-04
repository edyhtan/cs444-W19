package Parser.LRGrammar;

import java.util.List;

public class ParseTable {

    private List<String> JoosGrammar;
    private List<String> terminals;
    private List<String> nonterminals;

    private Transition curTrans;

    public ParseTable () {
        // table init
    }

    public String getAction() {
        return curTrans.getAction();
    }
}
