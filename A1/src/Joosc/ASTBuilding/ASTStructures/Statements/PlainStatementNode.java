package Joosc.ASTBuilding.ASTStructures.Statements;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.WeedingFailureException;

public class PlainStatementNode extends StatementNode {
    //Static singleton
    public static PlainStatementNode Empty = new PlainStatementNode(Symbol.Semicolon);

    Symbol kind;

    private PlainStatementNode(Symbol kind) {
        this.kind = kind;
    }

    @Override
    public void weed() throws WeedingFailureException {
    }

    @Override
    public void printInfo(int level) {
    }

    public Symbol getKind() {
        return kind;
    }
}
