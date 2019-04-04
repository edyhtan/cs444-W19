package Joosc.ASTModel.Statements;

import Joosc.AsmWriter.AsmWriter;
import Joosc.Exceptions.UnreachableStatementException;

import java.util.ArrayList;

public class ElseBlock extends HasScope implements Statement {
    Statement statement;
    public boolean in, out;

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

    //Code Gen
    AsmWriter asmWriter;

    @Override
    public void codeGen(int indent) {

        statement.addWriter(asmWriter);
        statement.codeGen(indent);
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }

}
