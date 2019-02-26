package Joosc.ASTBuilding.ASTStructures.Statements;

import Joosc.ASTBuilding.Constants.RecursionResolve;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class Block extends StatementNode{

    ArrayList<StatementNode> statements;

    Block(ParseTree tree) throws ASTException {
        if (tree.getChildren().size() > 2) {
            statements = new ArrayList<>();
            RecursionResolve.resolveNodes(
                    tree.getChildren().get(1),
                    statements,
                    Symbol.BlockStatements,
                    Symbol.BlockStatement,
                    StatementNode::resolveStatementNode
            );
        }
    }

    @Override
    public  void weed() throws WeedingFailureException  {
        if (statements != null) {
            for (StatementNode node: statements) {
                node.weed();
            }
        }
    }

    @Override
    public void printInfo(int level) { }
}
