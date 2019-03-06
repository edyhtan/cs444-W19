package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.BlockNode;
import Joosc.ASTBuilding.ASTStructures.Statements.StatementNode;
import Joosc.Environment.LocalEnv;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class Block extends HasScope implements Statement {
    private ArrayList<Statement> statements = new ArrayList<>();
    private LocalEnv env;

    public Block(BlockNode node) {
        if (node.getStatements() != null) {
            statements = node.getStatements().stream().map(stmt -> Statement.convertStatementNode(stmt))
                    .collect(Collectors.toCollection(ArrayList::new));
        }
    }

    @Override
    public ArrayList<Statement> getBlock() {
        return statements;
    }

}
