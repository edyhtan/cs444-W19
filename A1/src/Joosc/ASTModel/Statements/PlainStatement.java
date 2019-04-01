package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.PlainStatementNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;

public class PlainStatement implements Statement {
    Symbol kind;
    public boolean in, out;

    public PlainStatement(PlainStatementNode node) {
        kind = node.getKind();
    }

    public static PlainStatement Empty = new PlainStatement(PlainStatementNode.Empty);

    public Symbol getKind() {
        return kind;
    }

    @Override
    public void reachabilityAnalysis(boolean input) throws UnreachableStatementException {
        in = input;
        if (!in) {
            throw new UnreachableStatementException("Unreachable statement");
        }
        out = input;
    }

    @Override
    public boolean getIn() {
        return in;
    }

    @Override
    public boolean getOut() {
        return out;
    }

}
