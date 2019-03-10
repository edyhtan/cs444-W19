package Joosc.ASTBuilding.Constants;

import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class RecursionResolve {

    public static void resolveName(ParseTree tree, ArrayList<String> strList) {
        switch (tree.getKind()) {
            case Name:
                resolveName(tree.getChildren().get(0), strList);
                break;
            case SimpleName:
                strList.add(tree.getChildren().get(0).getLexeme());
                break;
            case QualifiedName:
                resolveName(tree.getChildren().get(0), strList);
                strList.add(tree.getChildren().get(2).getLexeme());
                break;
        }
    }

    @FunctionalInterface
    public interface ASTExceptionCheckedFunction<T, R> {
        R apply(T t) throws ASTException;
    }

    /**
     * A -> AB , where B is content: B->do_some_shit
     */
    public static <T> void resolveNodes
    (ParseTree tree, ArrayList<T> list, Symbol recurrentSymbol,
     Symbol contentSymbol, ASTExceptionCheckedFunction<ParseTree, T> contentLambda)
            throws ASTException {
        for (ParseTree child : tree.getChildren()) {
            if (child.getKind().equals(recurrentSymbol)) {
                resolveNodes(child, list, recurrentSymbol, contentSymbol, contentLambda);
            } else if (child.getKind().equals(contentSymbol)) {
                list.add(contentLambda.apply(child));
            } // Otherwise it is some other random nodes we want to ignore in this resolving walk
        }
    }

    @FunctionalInterface
    public interface ASTExceptionCheckedConsumer<T> {
        void accept(T t) throws ASTException;
    }

    // throw Exception when condition is false
    public static void assertThrow(boolean condition) throws WeedingFailureException {
        if (!condition) {
            throw new WeedingFailureException();
        }
    }

    public static ParseTree resolveUntilChildIs
            (ParseTree tree, Symbol recurrentSymbol, Symbol targetSymbol) throws ASTException {
        ParseTree child = tree.getChild(0);
        if (child.getKind().equals(recurrentSymbol)) {
            return resolveUntilChildIs(child, recurrentSymbol, targetSymbol);
        } else if (child.getKind().equals(targetSymbol)) {
            return child;
        } else {
            return null;
        }
    }

}
