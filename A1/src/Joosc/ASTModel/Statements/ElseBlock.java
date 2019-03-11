package Joosc.ASTModel.Statements;


import Joosc.Exceptions.TypeCheckException;

import java.util.ArrayList;

public class ElseBlock extends HasScope implements Statement {
    Statement statement;
    public ElseBlock(Statement statement) {
        this.statement = statement;
    }

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
    public void checkType() throws TypeCheckException {

    }
}
