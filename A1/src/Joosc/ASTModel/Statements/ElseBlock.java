package Joosc.ASTModel.Statements;


import java.util.ArrayList;

public class ElseBlock implements Statement, HasScope{
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
}
