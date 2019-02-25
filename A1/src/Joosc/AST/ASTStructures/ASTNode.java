package Joosc.AST.ASTStructures;

import Joosc.AST.Constants.RecursionResolve;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;
import java.util.function.Consumer;

public abstract class ASTNode {
    protected ParseTree parseTree;
    protected static final String TREEITEM = "|--";
    protected static final String TREELEVEL = "|  ";
    protected static final String TREESPACE = "   ";

    public abstract void weed() throws WeedingFailureException;
    public abstract void printInfo(int level);

    private String prefix;
    protected void printInfoInit(String title, int level) {
        for (int i = 0; i < level; i += 1) {
            System.out.print(TREELEVEL);
        }
        System.out.println(TREEITEM + title);
        this.prefix = new String(new char[level + 1]).replace("\0", TREELEVEL);
    }

    protected void printInfoSingle(String title, Object obj) {
        System.out.println(this.prefix + TREEITEM + title);
        System.out.println(this.prefix + TREELEVEL + TREESPACE + obj);
    }

    protected void printInfoStrAtLevel(String str, int level) {
        String localPrefix = new String(new char[level]).replace("\0", TREELEVEL);
        System.out.println(localPrefix + str);
    }

    protected <T> void printInfoArray(String title, ArrayList<T> arrayList) {
        System.out.println(this.prefix + TREEITEM + title);
        for(Object o : arrayList) {
            System.out.println(this.prefix + TREELEVEL + TREESPACE + o);
        }
    }

    protected <T> void printInfoArrayLambda (
            String title, ArrayList<T> nodeArrayList, Consumer<T> lambda
    ) {
        System.out.println(this.prefix + TREEITEM + title);
        for(T node : nodeArrayList) {
            lambda.accept(node);
        }
    }
}
