package Joosc.ASTBuilding.ASTStructures.Statements;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionNode;
import Joosc.ASTBuilding.ASTStructures.TypeNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

public class LocalVarDeclrStatementNode extends StatementNode {

    TypeNode type;
    String id;
    ExpressionNode initExpression;

    public LocalVarDeclrStatementNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        type = TypeNode.resolveTypeNode(parseTree.getChildren().get(0));

        for (ParseTree node: parseTree.getChildren().get(1).getChildren()) {
            if (node.getKind() == Symbol.ID) {
                id = node.getLexeme();
            } else if (node.getKind() == Symbol.VariableInit) {
                initExpression = ExpressionNode.resolveExpressionNode(node);
            }
        }
    }

    @Override
    public void weed() throws WeedingFailureException {
        if (initExpression != null)
            initExpression.weed();
    }

    @Override
    public void printInfo(int level) {
        this.printInfoInit("Local Var Declr Statement Node:", level);
    }
}
