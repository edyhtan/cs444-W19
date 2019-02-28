package Joosc.AST.ASTStructures.Expressions;

import Joosc.AST.Constants.RecursionResolve;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ExpressionContent extends ExpressionPrimary{

    String literal;
    ArrayList<String> name;

    public ExpressionContent(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        switch (parseTree.getKind()) {
            case Name:
                kind = Symbol.Name.getSymbolString();
                name = new ArrayList<>();
                RecursionResolve.resolveName(parseTree, name);
                break;
            case This:
                kind = Symbol.This.getSymbolString();
                literal = parseTree.getLexeme();
                break;
            case Literal:
                ParseTree child = parseTree.getChild(0);
                kind = child.getKind().getSymbolString();
                literal = child.getLexeme();
        }
    }

    @Override
    public void weed() {

    }

    @Override
    public void printInfo(int level) {
        printInfoInit("Expression Content:", level);
        printInfoSingle("Kind: ", kind);
        if (name != null) {
            printInfoSingle("Name: ", name);
        } else {
            printInfoSingle("Literal:", literal);
        }

    }
}
