package Joosc.ASTBuilding.ASTStructures.Expressions;

import Joosc.ASTBuilding.Constants.RecursionResolve;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ExpressionUnaryNode extends ExpressionNode {

    private Symbol kind;
    private Symbol unaryOperator;
    private ExpressionNode targetNode;
    private ArrayList<String> castingName;
    private boolean castingIsArray = false;

    public ExpressionUnaryNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        kind = parseTree.getKind();
        castingName = new ArrayList<>();
        targetNode = ExpressionNode.resolveExpressionNode(parseTree.getChildren().get(parseTree.getChildren().size() - 1));
        if (kind.equals(Symbol.CastExpression)) {
            if (parseTree.getChildren().size() == 6) {
                castingIsArray = true;
            }
            ParseTree cursor = parseTree.getChildren().get(1);
            if (cursor.getKind().equals(Symbol.Expression)) {
                cursor = findName(cursor);
            }
            if (cursor.getKind().equals(Symbol.PrimitiveType)) {
                cursor = cursor.getChildren().get(0);
                if (cursor.getKind().equals(Symbol.Boolean)) {
                    castingName.add(cursor.getLexeme());
                } else if (cursor.getKind().equals(Symbol.NumericType)) {
                    cursor = cursor.getChildren().get(0);
                    castingName.add(cursor.getLexeme());
                }
            }
            if (cursor.getKind().equals(Symbol.Name)) {
                RecursionResolve.resolveName(cursor, castingName);
            }
        } else {
            unaryOperator = parseTree.getChildren().get(0).getKind();
        }
    }

    ParseTree findName(ParseTree p) {
        return p.getKind().equals(Symbol.Name) ? p : findName(p.getChildren().get(0));
    }

    @Override
    public void weed() throws WeedingFailureException {

    }

    @Override
    public void printInfo(int level) {
        String title = "Unary Expression: ";
        if (kind.equals(Symbol.CastExpression)) {
            title = title + castingName.get(0) + castingName.subList(1, castingName.size()).stream().reduce("", (a, b) -> a + "." + b);
        }
        printInfoInit(title, level);
        printInfoSingle("Operator: ", unaryOperator);
        targetNode.printInfo(level + 1);
    }

    public Symbol getKind() {
        return kind;
    }

    public ArrayList<String> getCastingName() {
        return castingName;
    }

    public ExpressionNode getTargetNode() {
        return targetNode;
    }

    public Symbol getUnaryOperator() {
        return unaryOperator;
    }
}
