package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.LocalVarDeclrStatementNode;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.ASTModel.Type;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;

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

    @Override
    public void checkType() throws TypeCheckException {
        System.out.println(initExpression);
        // check declared type matches initExpr type
        JoosType initExprType = initExpression.getType();
        System.out.println(initExprType);
        System.out.println("111" + initExprType.getTypeName());
        ArrayList<String> initExprTypeName = initExprType.getTypeName();
        System.out.println(111111);
        System.out.println(initExprTypeName);

        // instance
        if (type.getArrayKind() == null) {
            // primitive
            if ((!type.getKind().getSymbolString().equals(initExprTypeName.get(0)))
                    // reference
                    || type.getNames() != null && (!type.getNames().equals(initExprTypeName))) {
                throw new TypeCheckException(String.format("Type incompatible: %s, %s",
                        type.getTypeName(), initExprTypeName));
            }
        } else { // array
            if (!(initExprType instanceof ArrayType)) {
                throw new TypeCheckException(String.format("Type incompatible: %s, %s",
                        type.getTypeName().toString(), initExprTypeName));
            }
            // primitive
            System.out.println(type.getArrayKind());
            System.out.println(type.getNames());
            if ((!type.getArrayKind().getSymbolString().equals(initExprTypeName.get(0)))
                    // reference
                    || (type.getNames()!= null && !type.getNames().equals(initExprTypeName))) {
                throw new TypeCheckException(String.format("Type incompatible: %s, %s",
                        type.getTypeName(), initExprTypeName));
            }
        }
    }
}
