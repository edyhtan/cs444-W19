package Joosc.AST.ASTStructures.Expressions;

import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

public class ExpressionBinary extends ExpressionNode {

    Symbol kind, operator;
    ExpressionNode LHS, RHS;
    ParseTree assignmentLHS;

    public ExpressionBinary(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        kind = parseTree.getKind();
        operator = parseTree.getChildren().get(1).getKind();
        LHS = ExpressionNode.resolveExpressionNode(parseTree.getChild(0));
        RHS = ExpressionNode.resolveExpressionNode(parseTree.getChild(2));
    }

    @Override
    public void weed() {

    }

    @Override
    public void printInfo(int level) {
        printInfoInit("Binary Expression:", level);
        LHS.printInfo(level + 1);
        printInfoSingle("Operator: ", operator + ", " + operator.getSymbolString());
        RHS.printInfo(level + 1);
    }
}
