package Joosc.AST.ASTStructures;

import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Parser.LRGrammar.ParseTree;

abstract class TypeDeclrNode extends ASTNode {

    static protected TypeDeclrNode resolveTypeDeclrNode (ParseTree parseTree) throws ASTException {
        ParseTree actualNode = parseTree.getChild(0);
        if (actualNode.getKind().equals(Symbol.ClassDeclr)) {
            return new ClassDeclrNode(actualNode);
        } else if (actualNode.getKind().equals(Symbol.InterfaceDeclr)) {
            return new InterfaceDeclrNode(actualNode);
        } else {
            throw new InvalidParseTreeStructureException(
                    parseTree, "ClassDeclr or InterfaceDeclr", actualNode.getKind().getSymbolString());
        }
    }

    public abstract String getName();

}
