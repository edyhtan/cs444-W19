package Joosc.ASTBuilding.ASTStructures.Statements;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.List;

public class ForStatementNode extends StatementNode {

    // optional clauses
    StatementNode forInit = null;
    ExpressionNode expression = null;
    StatementNode forUpdate = null;

    StatementNode statement;

    ForStatementNode(ParseTree tree) throws ASTException {
        List<ParseTree> children = tree.getChildren();

        if (children.size() == 9) {
            forInit = resolveForInit(children.get(2));
            expression = ExpressionNode.resolveExpressionNode(children.get(4));
            forUpdate = resolveForUpdate(children.get(6));
            statement = StatementNode.resolveStatementNode(children.get(8));
        } else if (children.size() == 8) {
            if (children.get(2).getKind() == Symbol.ForInit) {
                forInit = resolveForInit(children.get(2));
                if (children.get(4).getKind() == Symbol.Expression) { // for(ForInit;Expression;)
                    expression = ExpressionNode.resolveExpressionNode(children.get(4));
                } else { // for(ForInit;;ForUpdate)
                    forUpdate = resolveForUpdate(children.get(5));
                }
            } else { // for(;Expression;ForUpdate)
                expression = ExpressionNode.resolveExpressionNode(children.get(3));
                forUpdate = resolveForUpdate(children.get(5));
            }
            statement = StatementNode.resolveStatementNode(children.get(7));
        } else if (children.size() == 7) {
            if (children.get(3).getKind() == Symbol.Expression) { // for(;Expression;)
                expression = ExpressionNode.resolveExpressionNode(children.get(3));
            } else { // for(;;ForUpdate)
                forUpdate = resolveForUpdate(children.get(4));
            }
            statement = StatementNode.resolveStatementNode(children.get(6));
        } else { // for(;;)
            statement = StatementNode.resolveStatementNode(children.get(5));
        }
    }

    private StatementNode resolveForInit(ParseTree parseTree) throws ASTException {
        switch (parseTree.getChild(0).getKind()) {
            case LocalVarDeclr:
                return new LocalVarDeclrStatementNode(parseTree);
            case StatementExpression:
                return new ExpressionStatementNode(parseTree);
            default:
                throw new InvalidParseTreeStructureException(parseTree, "Illegal ForInit Node Structure");
        }
    }

    private StatementNode resolveForUpdate(ParseTree parseTree) throws ASTException{
        if (parseTree.getChild(0).getKind().equals(Symbol.StatementExpression)) {
            return new ExpressionStatementNode(parseTree);
        } else {
            throw new InvalidParseTreeStructureException(parseTree, "Illegal ForUpdate Node Structure");
        }
    }

    @Override
    public void weed() throws WeedingFailureException {
        if (forInit != null) forInit.weed();
        if (expression != null) expression.weed();
        if (forUpdate != null) forUpdate.weed();
        statement.weed();
    }

    @Override
    public void printInfo(int level) {
    }

    public StatementNode getStatement() {
        return statement;
    }

    public ExpressionNode getExpression() {
        return expression;
    }

    public StatementNode getForInit() {
        return forInit;
    }

    public StatementNode getForUpdate() {
        return forUpdate;
    }
}
