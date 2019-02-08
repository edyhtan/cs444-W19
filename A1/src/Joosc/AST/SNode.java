package Joosc.AST;

import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

/**
 * The base of any Joos program
 * */
class SNode extends ASTNode {
    protected PackageDeclrNode packageDeclr;
    protected ArrayList<ImportDeclrNode> importDeclrs;
    protected TypeDeclrNode typeDeclr;
    public ParseTree getParseTree() {
        return  parseTree;
    }
    public PackageDeclrNode getPackageDeclr() {
        return  packageDeclr;
    }
    public ArrayList<ImportDeclrNode> getImportDeclrs() {
        return importDeclrs;
    }
    public TypeDeclrNode getTypeDeclr() {
        return typeDeclr;
    }
    public SNode(ParseTree parseTree) throws InvalidParseTreeStructureException {
        this.parseTree = parseTree;
        importDeclrs = new ArrayList<>();
        packageDeclr = null;
        typeDeclr = null;
        for(ParseTree child : parseTree.getChildren()) {
            switch (child.getKind()) {
                case "PackageDeclr":
                    packageDeclr = new PackageDeclrNode(child);
                    break;
                case "ImportDeclrs":
                    resolveImports(child);
                    break;
                case "TypeDeclr":
                    typeDeclr = TypeDeclrNode.resolveTypeDeclrNode(child);
            }
        }
    }
    private void resolveImports(ParseTree importParseTreeNodes) {

    }
    public void weed() {

    }
}
