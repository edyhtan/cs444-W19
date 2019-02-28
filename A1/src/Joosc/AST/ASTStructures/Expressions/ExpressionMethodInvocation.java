package Joosc.AST.ASTStructures.Expressions;

import Joosc.AST.Constants.RecursionResolve;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ExpressionMethodInvocation extends ExpressionPrimary {

    ArrayList<String> methodName;
    ArrayList<ExpressionNode> argList;
    ExpressionNode methodParentExpression;
    String methodIdentifier;

    public ExpressionMethodInvocation(ParseTree parseTree) throws ASTException {
        ParseTree child = parseTree.getChild(0);
        if (child.getKind().equals(Symbol.Name)) {
            methodName = new ArrayList<>();
            RecursionResolve.resolveName(child, methodName);
            child = parseTree.getChild(2);
            if (child.getKind().equals(Symbol.ArgList)) {
                argList = new ArrayList<>();
                RecursionResolve.resolveNodes(
                        child,
                        argList,
                        Symbol.ArgList,
                        Symbol.Expression,
                        ExpressionNode::resolveExpressionNode
                );
            }
        } else if (child.getKind().equals(Symbol.Primary)) {
            methodParentExpression = ExpressionPrimary.resolvePrimary(child);
            child = parseTree.getChild(2, Symbol.ID);
            methodIdentifier = child.getLexeme();
            child = parseTree.getChild(4);
            if (child.getKind().equals(Symbol.ArgList)) {
                argList = new ArrayList<>();
                RecursionResolve.resolveNodes(
                        child,
                        argList,
                        Symbol.ArgList,
                        Symbol.Expression,
                        ExpressionNode::resolveExpressionNode
                );
            }
        } else {
            throw new InvalidParseTreeStructureException(parseTree, "Wrong MethodInvocation node");
        }
    }

    @Override
    public void weed(){}
    @Override
    public void printInfo(int level) {
        printInfoInit("Method Invocation:", level);
        if (methodName != null) {
            printInfoSingle("Name:", methodName);
        } else {
            printInfoStrAtLevel("Reference Expression:", level + 1);
            methodParentExpression.printInfo(level + 2);
        }
        if (argList != null) {
            printInfoArrayLambda("Argument List:", argList, c -> c.printInfo(level + 2));
        }
    }
}
