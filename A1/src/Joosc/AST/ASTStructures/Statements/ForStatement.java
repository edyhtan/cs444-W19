package Joosc.AST.ASTStructures.Statements;

import Joosc.AST.ASTStructures.ExpressionNode;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.List;

public class ForStatement extends StatementNode {

    // optional clauses
    StatementNode forInit = null;
    ExpressionNode expression = null;
    StatementNode forUpdate = null;

    StatementNode statement;

    ForStatement(ParseTree tree) throws ASTException {
        List<ParseTree> children = tree.getChildren();

        if (children.size() == 9) {
            forInit = StatementNode.resolveStatementNode(children.get(2));
            expression = ExpressionNode.resolveExpressionNode(children.get(4));
            forUpdate = StatementNode.resolveStatementNode(children.get(6));
            statement = StatementNode.resolveStatementNode(children.get(8));
        } else if (children.size() == 8) {
            if (children.get(2).getKind() == Symbol.ForInit) {
                forInit = StatementNode.resolveStatementNode(children.get(2));
                if (children.get(4).getKind() == Symbol.Expression) { // for(ForInit;Expression;)
                    expression = ExpressionNode.resolveExpressionNode(children.get(4));
                } else { // for(ForInit;;ForUpdate)
                    forUpdate = StatementNode.resolveStatementNode(children.get(5));
                }
            } else { // for(;Expression;ForUpdate)
                expression = ExpressionNode.resolveExpressionNode(children.get(3));
                forUpdate = StatementNode.resolveStatementNode(children.get(5));
            }
            statement = StatementNode.resolveStatementNode(children.get(7));
        } else if (children.size() == 7) {
            if (children.get(3).getKind() == Symbol.Expression) { // for(;Expression;)
                expression = ExpressionNode.resolveExpressionNode(children.get(3));
            } else { // for(;;ForUpdate)
                forUpdate = StatementNode.resolveStatementNode(children.get(4));
            }
            statement = StatementNode.resolveStatementNode(children.get(6));
        } else { // for(;;)
            statement = StatementNode.resolveStatementNode(children.get(5));
        }
    }


    @Override
    public void weed() throws WeedingFailureException {
        if (forUpdate != null) forInit.weed();
        if (expression != null) expression.weed();
        if (forUpdate != null) forUpdate.weed();
        statement.weed();
    }

    @Override
    public void printInfo(int level) {
    }
}
