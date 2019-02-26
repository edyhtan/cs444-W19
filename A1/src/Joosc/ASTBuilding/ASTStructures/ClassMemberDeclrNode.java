package Joosc.ASTBuilding.ASTStructures;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

abstract class ClassMemberDeclrNode extends ClassBodyDeclrNode {

    static protected ClassMemberDeclrNode resolveClassMemberDeclrNode(ParseTree parseTree) throws ASTException {
        ParseTree child = parseTree.getChild(0);
        switch (child.getKind()) {
            case FieldDeclr:
                return new FieldDeclrNode(child);
            case MethodDeclr:
                return new MethodDeclrNode(child);
            default:
                throw new InvalidParseTreeStructureException(
                        parseTree,
                        "Illegal Class Member Body Declr node. Must be one of "
                                + Symbol.FieldDeclr + " or " + Symbol.MethodDeclr+ ".");
        }
    }
    @Override
    public abstract void weed() throws WeedingFailureException;
    @Override
    public abstract void printInfo(int level);
}
