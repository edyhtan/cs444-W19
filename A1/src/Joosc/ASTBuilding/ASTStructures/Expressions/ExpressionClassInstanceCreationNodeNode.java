package Joosc.ASTBuilding.ASTStructures.Expressions;

import Joosc.ASTBuilding.ASTStructures.TypeNode;
import Joosc.ASTBuilding.Constants.RecursionResolve;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ExpressionClassInstanceCreationNodeNode extends ExpressionPrimaryNode {

    TypeNode classType;
    ArrayList<ExpressionNode> argList;

    public ExpressionClassInstanceCreationNodeNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        ParseTree child = parseTree.getChild(1);
        classType = new TypeNode(child);
        if (parseTree.getChild(3).getKind() == Symbol.ArgList) {
            child = parseTree.getChild(3);
            argList = new ArrayList<>();
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
        if (argList != null) {
            printInfoArrayLambda("Argument List:", argList, c -> c.printInfo(level + 2));
        }
    }

    public ArrayList<ExpressionNode> getArgList() {
        return argList;
    }

    public TypeNode getClassType() {
        return classType;
    }
}
