package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionClassInstanceCreationNodeNode;
import Joosc.ASTModel.Type;

import java.util.ArrayList;
import java.util.stream.Collectors;

public class ExpressionClassInstanceCreation implements Expression {
    private Type classType;
    private ArrayList<Expression> argList;

    public ExpressionClassInstanceCreation(ExpressionClassInstanceCreationNodeNode node) {
        classType = Type.convertTypeNode(node.getClassType());
        argList = node.getArgList().stream().map(Expression::convertExpressionNode)
                .collect(Collectors.toCollection(ArrayList::new));
    }

    public Type getClassType() {
        return classType;
    }

    public ArrayList<Expression> getArgList() {
        return argList;
    }
}
