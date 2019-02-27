package Joosc.ASTBuilding.ASTStructures.Expressions;

import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

public class ClassInstanceCreationNode extends ExpressionPrimaryNode {
    public ClassInstanceCreationNode(ParseTree parseTree) throws ASTException {

    }

    @Override
    public void weed() {}

    @Override
    public void printInfo(int level) {}
}
