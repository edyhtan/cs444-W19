package Joosc.AST.ASTStructures.Statements;

import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.WeedingFailureException;

public class PlainStatement extends StatementNode {
    //Static singleton
    public static PlainStatement Empty = new PlainStatement(Symbol.Semicolon);

    Symbol kind;

    private PlainStatement(Symbol kind) {
        this.kind = kind;
    }

    @Override
    public void weed() throws WeedingFailureException { }

    @Override
    public void printInfo(int level) { }
}
