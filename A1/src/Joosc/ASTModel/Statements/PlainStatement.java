package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.PlainStatementNode;
import Joosc.ASTBuilding.Constants.Symbol;

public class PlainStatement extends Statement {
    Symbol kind;

    public PlainStatement(PlainStatementNode node) {
        kind = node.getKind();
    }

    public static PlainStatement Empty = new PlainStatement(PlainStatementNode.Empty);

    public Symbol getKind() {
        return kind;
    }
}
