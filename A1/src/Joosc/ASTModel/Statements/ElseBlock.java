package Joosc.ASTModel.Statements;


import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;

import java.util.ArrayList;

public class ElseBlock extends HasScope implements Statement {
    Statement statement;
    public ElseBlock(Statement statement) {
        this.statement = statement;
    }
    public boolean in,out;

    @Override
    public ArrayList<Statement> getBlock() {
        if (statement instanceof Block) {
            return ((Block) statement).getBlock();
        } else {
            ArrayList<Statement> statements = new ArrayList<>();
            statements.add(statement);
            return statements;
        }
    }

    @Override
    public void passDownScopes() {

    }

    @Override
    public void reachabilityAnalysis(boolean input) throws UnreachableStatementException {
        in = input;
        statement.reachabilityAnalysis(in);
        out = statement.getOut();
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
