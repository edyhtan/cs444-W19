package Joosc.ASTBuilding.ASTStructures;

import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

public abstract class TypeNode extends ASTNode {

    public static TypeNode resolveTypeNode(ParseTree parseTree) {
        return new PrimitiveTypeNode(parseTree);
    }

    @Override
    public abstract void weed() throws WeedingFailureException;
    @Override
    public abstract void printInfo(int level);
}
