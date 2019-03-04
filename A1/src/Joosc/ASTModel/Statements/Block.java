package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.BlockNode;
import Joosc.ASTBuilding.ASTStructures.Statements.StatementNode;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class Block implements Statement, HasScope {
    private ArrayList<Statement> statements;

    public Block(BlockNode node) {
        statements = node.getStatements().stream().map(stmt -> Statement.convertStatementNode(stmt))
                .collect(Collectors.toCollection(ArrayList::new));
    }

    public ArrayList<Statement> getStatements() {
        return statements;
    }

    @Override
    public ArrayList<Statement> getBlock() {
        return statements;
    }
}
