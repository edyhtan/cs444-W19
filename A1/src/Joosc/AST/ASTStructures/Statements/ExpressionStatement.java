package Joosc.AST.ASTStructures.Statements;

import Joosc.AST.ASTStructures.ExpressionNode;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

public class ExpressionStatement extends StatementNode{

    ExpressionStatement(ParseTree tree) {

    }

    @Override
    public void weed() throws WeedingFailureException { }

    @Override
    public void printInfo(int level) { }
}
