package Joosc.AST.ASTStructures;

import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

abstract class ClassBodyDeclrNode extends ASTNode {
    static protected ClassBodyDeclrNode resolveClassBodyDeclrNode (ParseTree parseTree) throws ASTException {
        ParseTree child = parseTree.getChild(0);
        switch (child.getKind()) {
            case ConstructorDeclr:
                return new ConstructorDeclrNode(child);
            case ClassMemberDeclr:
                return ClassMemberDeclrNode.resolveClassMemberDeclrNode(child);
            default:
                throw new InvalidParseTreeStructureException(
                        parseTree,
                        "Illegal Class Body Declr node. Must be one of "
                                + Symbol.ConstructorDeclr + " or " + Symbol.ClassMemberDeclr + ".");
        }
    }

    @Override
    public abstract void weed() throws WeedingFailureException;
    @Override
    public abstract void printInfo(int level);
}
