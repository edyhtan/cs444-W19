package Joosc.AST.ASTStructures.Expressions;

import Joosc.AST.Constants.RecursionResolve;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ExpressionContent extends ExpressionPrimary{

    String literal;
    Symbol kind;
    ArrayList<String> name;

    public ExpressionContent(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        switch (parseTree.getKind()) {
            case Name:
                kind = Symbol.Name;
                name = new ArrayList<>();
                RecursionResolve.resolveName(parseTree, name);
                break;
            case This:
                kind = Symbol.This;
        }

    }

//    public ExpressionNode resolveExpressionContent(ParseTree parseTree) {
//
//    }

    @Override
    public void weed() {

    }

    @Override
    public void printInfo(int level) {
        printInfoInit("Expression Content:", level);
        printInfoSingle("Kind: ", kind);
        printInfoSingle("Literal: ", literal);
    }
}
