package Joosc.ASTBuilding.ASTStructures.Expressions;

import Joosc.ASTBuilding.ASTStructures.TypeNode;
import Joosc.ASTBuilding.Constants.RecursionResolve;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ExpressionUnaryNode extends ExpressionNode {

    private Symbol kind;
    private Symbol unaryOperator;
    private ExpressionNode targetNode;
    private TypeNode castingTypeNode;

    public ExpressionUnaryNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        kind = parseTree.getKind();
        if (kind.equals(Symbol.CastExpression)) {
            castingTypeNode = new TypeNode(parseTree.getChild(1));
            if (parseTree.getChild(2).getKind().equals(Symbol.LeftSquare)){
                castingTypeNode.changeToArrayType();
                targetNode = ExpressionNode.resolveExpressionNode(parseTree.getChild(5));
            } else {
                targetNode = ExpressionNode.resolveExpressionNode(parseTree.getChild(3));
            }
        } else {
            kind = Symbol.UnaryExpression;
            unaryOperator = parseTree.getChildren().get(0).getKind();
            targetNode = ExpressionNode.resolveExpressionNode(parseTree.getChild(1));
        }
    }

    @Override
    public void weed() throws WeedingFailureException {

    }

    @Override
    public void printInfo(int level) {
        String title = kind.equals(Symbol.CastExpression) ? "Cast Expression:" : "Unary Expression: ";
        printInfoInit(title, level);
        if (kind.equals(Symbol.CastExpression)) {
            printInfoStrAtLevel("Casting Type", level + 1);
            castingTypeNode.printInfo(level + 2);
            printInfoStrAtLevel("Target Node", level + 1);
            targetNode.printInfo(level + 2);
        } else {
            printInfoSingle("Operator: ", unaryOperator);
            printInfoStrAtLevel("Target Node:", level + 1);
            targetNode.printInfo(level + 2);
        }
    }

    public Symbol getKind() {
        return kind;
    }

    public TypeNode getCastingTypeNode() {
        return castingTypeNode;
    }

    public ExpressionNode getTargetNode() {
        return targetNode;
    }

    public Symbol getUnaryOperator() {
        return unaryOperator;
    }
}
