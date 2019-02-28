package Joosc.ASTBuilding.ASTStructures.Expressions;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

public class ExpressionFieldAccessNode extends ExpressionPrimaryNode {

    String fieldIdentifier;
    ExpressionNode fieldParentExpression;

    public ExpressionFieldAccessNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        fieldIdentifier = parseTree.getChild(2, Symbol.ID).getLexeme();
        fieldParentExpression = ExpressionPrimaryNode.resolvePrimary(parseTree.getChild(0, Symbol.Primary));
    }

    @Override
    public void weed() {}
    @Override
    public void printInfo(int level) {
        printInfoInit("Field Access:", level);
        fieldParentExpression.printInfo(level + 1);
        printInfoSingle("Field Identifier:", fieldIdentifier);
    }
}
