package Joosc.AST.ASTStructures.Statements;

import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

public class ReturnStatement extends StatementNode {

    ReturnStatement(ParseTree tree) {

    }

    @Override
    public void weed() throws WeedingFailureException { }

    @Override
    public void printInfo(int level) { }
}
