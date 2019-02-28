package Joosc.AST.ASTStructures;

import Joosc.AST.ASTStructures.ASTNode;
import Joosc.AST.Constants.RecursionResolve;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class TypeNode extends ASTNode {

    Symbol kind, arrayKind;
    ArrayList<String> names;

    public TypeNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        ParseTree child;
        switch (parseTree.getKind()) {
            case PrimitiveType:         // Special cases
            case ClassOrInterfaceType:
            case Name:
                child = parseTree;
                break;
            case Type:                  // Default case, coming from typeDclr
            case Expression:            // Name
            case ClassType:
            default:
                child = parseTree.getChild(0);
        }
        names = null;
        switch (child.getKind()) {
            case PrimitiveType:
                kind = resolvePrimitiveKind(child);
                break;
            case ReferenceType:
                child = child.getChild(0);
                if (child.getKind().equals(Symbol.ArrayType)) {
                    resolveArray(child);
                    return;
                }
            case ClassOrInterfaceType:
                child = child.getChild(0);      //Name
            case Name:
                names = new ArrayList<>();
                RecursionResolve.resolveName(child, names);
        }

    }

    public void changeToArrayType() {
        arrayKind = kind;
        kind = Symbol.ArrayType;
    }

    private Symbol resolvePrimitiveKind(ParseTree node) throws ASTException {
        node = node.getChild(0);
        if (node.getKind().equals(Symbol.Boolean)) {
            return Symbol.Boolean;
        } else {
            //NumericType
            node = node.getChild(0);
            return node.getKind();
        }
    }


    private void resolveArray(ParseTree node) throws ASTException {
        kind = Symbol.ArrayType;
        node = node.getChild(0);
        if (node.getKind().equals(Symbol.PrimitiveType)) {
            arrayKind = resolvePrimitiveKind(node);
        } else {
            names = new ArrayList<>();
            RecursionResolve.resolveName(node, names);
        }
    }

    @Override
    public void weed() throws WeedingFailureException {}
    @Override
    public void printInfo(int level) {
        printInfoInit("Type", level);
        printInfoSingle("Kind:", kind);
        if (kind.equals(Symbol.ArrayType)) {
            if (names == null) {
                printInfoSingle("Array Type:", arrayKind);
            } else {
                printInfoSingle("Array Type:", names);
            }
        } else if (names != null) {
            printInfoSingle("Names:", names);
        }

    }
}
