package Parser.LRGrammar;

import java.util.Arrays;
import java.util.List;
public class ParseTree {
    private String symbol;
    private List<ParseTree> children;

    private static String TREEITEM = "|--";
    private static String TREELEVEL = "|  ";

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

    public void print() {
        System.out.println(TREEITEM + symbol);
        for (ParseTree each: children) {
            each.print(1);
        }
    }

    private void print(int level) {
        for (int i = 0; i < level; i++) {
            System.out.print(TREELEVEL);
        }
        System.out.println(TREEITEM + symbol);
        for (ParseTree each: children) {
            each.print(level + 1);
        }
    }
}