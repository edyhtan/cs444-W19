package Joosc.Parser.LRGrammar;

import java.util.List;
public class ParseTree {
    private String lexeme;
    private String kind;
    private List<ParseTree> children;

    private static String TREEITEM = "|--";
    private static String TREELEVEL = "|  ";

    ParseTree(String lexeme, String kind, List<ParseTree> children) {
        this.lexeme = lexeme;
        this.kind = kind;
        this.children = children;
    }
    public String getSymbol() {
        return lexeme;
    }

    public List<ParseTree> getChildren() {
        return children;
    }

    public void print() {
        System.out.printf("%s%s : %s\n", TREEITEM, kind, lexeme);
        for (ParseTree each: children) {
            each.print(1);
        }
    }

    private void print(int level) {
        for (int i = 0; i < level; i++) {
            System.out.print(TREELEVEL);
        }
        System.out.printf("%s%s : %s\n", TREEITEM, kind, lexeme);
        for (ParseTree each: children) {
            each.print(level + 1);
        }
    }
}