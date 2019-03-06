package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.LocalVarDeclrStatementNode;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.ASTModel.Type;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;

public class LocalVarDeclrStatement implements Statement, HasExpression {
    private Type type;
    private String id;
    private Expression initExpression;

    public LocalVarDeclrStatement(LocalVarDeclrStatementNode node) {
        type = new Type(node.getType());
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

    @Override
    public void checkExpression(LocalEnv env) throws NamingResolveException {

    }
}
