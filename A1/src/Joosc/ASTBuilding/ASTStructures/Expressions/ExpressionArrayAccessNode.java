package Joosc.ASTBuilding.ASTStructures.Expressions;

import Joosc.ASTBuilding.Constants.RecursionResolve;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ExpressionArrayAccessNode extends ExpressionPrimaryNode {

    ArrayList<String> referenceName;
    ExpressionNode referenceExpression;
    ExpressionNode indexExpression;

    public ExpressionArrayAccessNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        indexExpression =  resolveExpressionNode(parseTree.getChild(2, Symbol.Expression));
        ParseTree child = parseTree.getChild(0);
        if (child.getKind().equals(Symbol.Name)) {
            referenceName = new ArrayList<>();
            RecursionResolve.resolveName(child, referenceName);
        } else if (child.getKind().equals(Symbol.PrimaryNoNewArray)) {
            referenceExpression = ExpressionPrimaryNode.resolvePrimary(child);
        }
    }

    @Override
    public void weed() {}
    @Override
    public void printInfo(int level) {
        printInfoInit("Array Access:", level);
        if (referenceName != null) {
            printInfoSingle("Name:", referenceName);
        } else {
            printInfoStrAtLevel("Reference Expression:", level + 1);
            referenceExpression.printInfo(level + 2);
        }
    }

    public ArrayList<String> getReferenceName() {
        return referenceName;
    }

    public ExpressionNode getIndexExpression() {
        return indexExpression;
    }

    public ExpressionNode getReferenceExpression() {
        return referenceExpression;
    }
}
