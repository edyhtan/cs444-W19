package Joosc.AST;

import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Parser.LRGrammar.ParseTree;

abstract class TypeDeclrNode extends ASTNode {
    static protected TypeDeclrNode resolveTypeDeclrNode (ParseTree parseTree) throws InvalidParseTreeStructureException {
        ParseTree actualNode = parseTree.getChildren().get(0);
        if (actualNode.getKind().equals("ClassDeclr")) {
            return new ClassDeclrNode();
        } else if (actualNode.getKind().equals("InterfaceDeclr")) {
            return new InterfaceDeclrNode();
        } else {
            throw new InvalidParseTreeStructureException(
                    parseTree, "ClassDeclr or InterfaceDeclr", actualNode.getKind());
        }
    }
    public void weed(){

    }
}
