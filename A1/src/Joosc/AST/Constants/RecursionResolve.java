package Joosc.AST.Constants;

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
}
