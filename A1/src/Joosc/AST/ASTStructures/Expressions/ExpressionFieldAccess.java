package Joosc.AST.ASTStructures.Expressions;

import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

public class ExpressionFieldAccess extends ExpressionPrimary {

    String fieldIdentifier;
    ExpressionNode fieldParentExpression;

    public ExpressionFieldAccess(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        fieldIdentifier = parseTree.getChild(2, Symbol.ID).getLexeme();
        fieldParentExpression = ExpressionPrimary.resolvePrimary(parseTree.getChild(0, Symbol.Primary));
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
