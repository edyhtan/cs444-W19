package Joosc.ASTBuilding.ASTStructures.Expressions;

import Joosc.ASTBuilding.ASTStructures.TypeNode;
import Joosc.ASTBuilding.Constants.RecursionResolve;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ExpressionClassInstanceCreationNode extends ExpressionPrimaryNode {

    TypeNode classType;
    ArrayList<ExpressionNode> argList;

    public ExpressionClassInstanceCreationNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        argList = new ArrayList<>();
        ParseTree child = parseTree.getChild(1);
        classType = new TypeNode(child);
        if (parseTree.getChild(3).getKind() == Symbol.ArgList) {
            child = parseTree.getChild(3);
            RecursionResolve.resolveNodes(
                    child,
                    argList,
                    Symbol.ArgList,
                    Symbol.Expression,
                    ExpressionNode::resolveExpressionNode
            );
        }
    }

    @Override
    public void weed() {}

    @Override
    public void printInfo(int level) {
        printInfoInit("Class Instance Creation:", level);
        classType.printInfo(level + 1);

        printInfoArrayLambda("Argument List:", argList, c -> c.printInfo(level + 2));

    }

    public ArrayList<ExpressionNode> getArgList() {
        return argList;
    }

    public TypeNode getClassType() {
        return classType;
    }
}
