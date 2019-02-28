package Joosc.ASTBuilding.ASTStructures.Expressions;

import Joosc.AST.Constants.RecursionResolve;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ExpressionArrayAccess extends ExpressionPrimary {

    ArrayList<String> referenceName;
    ExpressionNode referenceExpression;
    ExpressionNode indexExpression;

    public ExpressionArrayAccess (ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        indexExpression =  resolveExpressionNode(parseTree.getChild(2, Symbol.Expression));
        ParseTree child = parseTree.getChild(0);
        if (child.getKind().equals(Symbol.Name)) {
            referenceName = new ArrayList<>();
            RecursionResolve.resolveName(child, referenceName);
        } else if (child.getKind().equals(Symbol.PrimaryNoNewArray)) {
            referenceExpression = ExpressionPrimary.resolvePrimary(child);
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
}
