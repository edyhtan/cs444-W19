package Parser.LRGrammar;

import java.util.List;
public class ParseTree {
    private String symbol;
    private List<ParseTree> children;

    ParseTree(String symbol, List<ParseTree> children) {
        this.symbol = symbol;
        this.children = children;
    }
    public String getSymbol() {
        return symbol;
    }
    public List<ParseTree> getChildren() {
        return children;
    }
    public void print(List<String> terminals) {
        if (!terminals.contains(symbol)) {
            for (ParseTree c : children) System.out.print(c.symbol + " ");
            System.out.print("\n");
        } else {
            System.out.println(symbol + " " + children.get(0).symbol);
        }
        for (ParseTree c : children) {
            if (!terminals.contains(symbol)) c.print(terminals);
        }
    }
}