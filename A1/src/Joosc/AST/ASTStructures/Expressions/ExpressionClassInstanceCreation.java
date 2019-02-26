package Joosc.AST.ASTStructures.Expressions;

import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

public class ExpressionClassInstanceCreation extends ExpressionPrimary {
    public ExpressionClassInstanceCreation(ParseTree parseTree) throws ASTException {

    }

    @Override
    public void weed() {}

    @Override
    public void printInfo(int level) {}
}
