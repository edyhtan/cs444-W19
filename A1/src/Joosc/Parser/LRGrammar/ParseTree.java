package Joosc.Parser.LRGrammar;

import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.InvalidParseTreeStructureException;

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

    private void checkParseTreeChildIndex(int index) throws InvalidParseTreeStructureException {
        if (index >= children.size()) {
            String errMsg = "Trying to get child of index:" + index + " out of the parse tree. Out of bound.";
            throw new InvalidParseTreeStructureException(this, errMsg);
        }
    }
    private void checkParseTreeChildKind(ParseTree parseTree, Symbol kind) throws InvalidParseTreeStructureException {
        if (!parseTree.getKind().equals(kind)) {
            String errMsg = "Child should be of kind:" + kind + ", got kind:" + parseTree.getKind() + "in parse tree.";
            throw new InvalidParseTreeStructureException(parseTree, errMsg);
        }
    }
    public ParseTree getChild(int index) throws InvalidParseTreeStructureException{
        checkParseTreeChildIndex(index);
        return this.children.get(index);
    }
    public ParseTree getChild(int index, Symbol kind) throws InvalidParseTreeStructureException {
        ParseTree child = getChild(index);
        checkParseTreeChildKind(child, kind);
        return this.children.get(index);
    }
}