package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.LocalVarDeclrStatementNode;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.ASTModel.Type;

public class LocalVarDeclrStatement extends Statement {
    private Type type;
    private String id;
    private Expression initExpression;

    public LocalVarDeclrStatement(LocalVarDeclrStatementNode node) {
        type = Type.convertTypeNode(node.getType());
        id = node.getId();
        initExpression = Expression.convertExpressionNode(node.getInitExpression());
    }

    public String getId() {
        return id;
    }

    public Expression getInitExpression() {
        return initExpression;
    }

    public Type getType() {
        return type;
    }
}
