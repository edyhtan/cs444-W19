package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.PlainStatementNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.TypeCheckException;

public class PlainStatement implements Statement {
    Symbol kind;

    public PlainStatement(PlainStatementNode node) {
        kind = node.getKind();
    }

    public static PlainStatement Empty = new PlainStatement(PlainStatementNode.Empty);

    public Symbol getKind() {
        return kind;
    }

    @Override
    public void checkType() throws TypeCheckException {

    }
}
