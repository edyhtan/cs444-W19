package Joosc.AST.ASTStructures.Expressions;

import Joosc.AST.ASTStructures.TypeNode;
import Joosc.AST.Constants.RecursionResolve;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ExpressionClassInstanceCreation extends ExpressionPrimary {

    TypeNode classType;
    ArrayList<ExpressionNode> argList;

    public ExpressionClassInstanceCreation(ParseTree parseTree) throws ASTException {
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
            printInfoArrayLambda("Argument List:", argList, c -> c.printInfo(level + 1));
        }
    }
}
