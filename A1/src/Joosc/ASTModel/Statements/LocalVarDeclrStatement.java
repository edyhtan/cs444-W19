package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.LocalVarDeclrStatementNode;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.ASTModel.Type;
import Joosc.Environment.Env;
import Joosc.Environment.FieldsVarInfo;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

public class LocalVarDeclrStatement implements Statement, HasExpression {
    private Type type;
    private String id;
    private Expression initExpression;
    FieldsVarInfo info;
    private boolean parentIsStatic;

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

    public void addInfo(FieldsVarInfo info) {
        this.info = info;
    }

    @Override
    public void checkExpression(Env env) throws NamingResolveException {
        if (initExpression != null) {
            initExpression.addEnv(env);
            initExpression.validate();
        }
    }

    @Override
    public void checkType() throws TypeCheckException {
        // check declared type matches initExpr type
        if (initExpression == null) {
            return;
        }

        JoosType initExprType = initExpression.getType();

        if (!info.getTypeInfo().getJoosType().assignable(initExprType)) {
            throw new TypeCheckException(String.format("Incompatible Type: %s, %s",
                    String.join(".", info.getTypeInfo().getJoosType().getTypeName()),
                    String.join(".", initExprType.getTypeName())));
        }
    }

    @Override
    public void setParentIsStatic(boolean parentIsStatic) {
        this.parentIsStatic = parentIsStatic;
    }
}
