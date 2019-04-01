package Joosc.ASTBuilding.ASTStructures.Expressions;

import Joosc.ASTBuilding.Constants.RecursionResolve;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ExpressionContentNode extends ExpressionNode {

    String literal;
    ArrayList<String> name;

    public ExpressionContentNode(ParseTree parseTree) throws ASTException {
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
                literal = kind.equals("BooleanLiteral")
                        ? child.getChild(0).getLexeme()
                        : child.getLexeme();
                break;
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

    public ArrayList<String> getName() {
        return name;
    }

    public String getLiteral() {
        return literal;
    }
}
