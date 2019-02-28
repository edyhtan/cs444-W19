package Joosc.AST.ASTStructures.Expressions;

import Joosc.AST.ASTStructures.TypeNode;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

public class ExpressionArrayCreation extends ExpressionPrimary {

    ExpressionNode sizeExpression;
    TypeNode arrayType;

    public ExpressionArrayCreation(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        arrayType = new TypeNode(parseTree.getChild(1));
        arrayType.changeToArrayType();
        sizeExpression = ExpressionNode.resolveExpressionNode(parseTree.getChild(3, Symbol.Expression));
    }

    @Override
    public void weed() {}

    @Override
    public void printInfo(int level) {
        printInfoInit("Array Creation:", level);
        arrayType.printInfo(level + 1);
        sizeExpression.printInfo(level + 1);
    }
}
