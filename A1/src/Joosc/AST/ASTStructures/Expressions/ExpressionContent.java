package Joosc.AST.ASTStructures.Expressions;

import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ExpressionContent extends ExpressionNode{

    ArrayList<ExpressionNode> argList = new ArrayList<>();
    ExpressionNode contentExpression;
    String literal;
    public Symbol literalKind;

    public ExpressionContent(ParseTree parseTree) throws ASTException {
        ParseTree cursor = parseTree.getChild(0);
        if (cursor.getKind().equals(Symbol.PrimaryNoNewArray)) {
            cursor = cursor.getChild(0);
            if (cursor.getKind() == Symbol.Literal) {
                literalKind = cursor.getChild(0).getKind();
                literal = cursor.getChild(0).getLexeme();
            }
        } else if (cursor.getKind().equals(Symbol.ArrayCreation)) {
            contentExpression = ExpressionNode.resolveExpressionNode(cursor.getChild(3));
        }
    }

    @Override
    public void weed() {

    }

    @Override
    public void printInfo(int level) {
        printInfoInit("Expression Content:", level);
        printInfoSingle("Literal Kind: ", literalKind);
        printInfoSingle("Literal: ", literal);
    }
}
