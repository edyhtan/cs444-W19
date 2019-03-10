package Joosc.ASTBuilding.ASTStructures.Expressions;

import Joosc.ASTBuilding.Constants.RecursionResolve;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.InvalidParseTreeException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ExpressionTypeNode extends ExpressionNode{

    ArrayList<String> typeName = new ArrayList<>();
    boolean isArray;

    public ExpressionTypeNode(ParseTree parseTree) throws InvalidParseTreeStructureException {
        switch (parseTree.getKind()) {
            case ArrayType:
                isArray = true;
                if (parseTree.getChild(0).getKind() == Symbol.PrimitiveType) {
                    resolvePrimitive(parseTree.getChild(0).getChild(0));
                } else {
                    RecursionResolve.resolveName(parseTree.getChild(0).getChild(0), typeName);
                }
                break;
            default:
                isArray = false;
                RecursionResolve.resolveName(parseTree.getChild(0), typeName);
        }
    }

    public void resolvePrimitive(ParseTree parseTree) throws InvalidParseTreeStructureException {
        if (parseTree.getKind() == Symbol.Boolean) {
            typeName.add(parseTree.getLexeme());
        } else {
            typeName.add(parseTree.getChild(0).getLexeme());
        }
    }

    public ArrayList<String> getTypeName() {
        return typeName;
    }

    public boolean isArray() {
        return isArray;
    }

    @Override
    public void printInfo(int level) { }

    @Override
    public void weed() { }
}
