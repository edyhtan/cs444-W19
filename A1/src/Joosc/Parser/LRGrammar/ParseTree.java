package Joosc.Parser.LRGrammar;

import Joosc.AST.Constants.Symbol;

import java.util.List;
public class ParseTree {
    private String lexeme;
    private Symbol kind;
    private List<ParseTree> children;

    private static String TREEITEM = "|--";
    private static String TREELEVEL = "|  ";

    ParseTree(String lexeme, String kind, List<ParseTree> children) {
        this.lexeme = lexeme;
        this.kind = Symbol.fromString(
                kind.equals("separator") | kind.equals("operator") | kind.equals("keyword") ? lexeme : kind);
        this.children = children;
    }

    public String getSymbol() {
        return lexeme;
    }

    public Symbol getKind() {
        return kind;
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

    public String getLexeme() {
        return lexeme;
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