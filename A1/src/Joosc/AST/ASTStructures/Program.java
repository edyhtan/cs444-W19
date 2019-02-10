package Joosc.AST.ASTStructures;

import Joosc.AST.Constants.RecursionResolve;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

/**
 * The base of any Joos program
 * */
public class Program extends ASTNode {
    private ArrayList<String> packageDeclr;
    private ArrayList<ArrayList<String>> singleTypeImport;
    private ArrayList<ArrayList<String>> onDemandTypeImport;

    private TypeDeclrNode typeDeclr;

    public Program(ParseTree parseTree) throws InvalidParseTreeStructureException {
        this.parseTree = parseTree;
        packageDeclr = null;
        singleTypeImport = new ArrayList<>();
        onDemandTypeImport = new ArrayList<>();
        typeDeclr = null;

        for(ParseTree child : parseTree.getChildren()) {
            switch (child.getKind()) {
                case PackageDeclr:
                    buildPackage(child);
                    break;
                case ImportDeclr:
                    buildImports(child);
                    break;
                case TypeDeclr:
                    //typeDeclr = TypeDeclrNode.resolveTypeDeclrNode(child);
            }
        }
    }

    private void buildPackage(ParseTree tree) {
        packageDeclr = new ArrayList<>();
        RecursionResolve.resolveName(tree.getChildren().get(1), packageDeclr);
    }

    private void buildImports(ParseTree tree) {
        switch (tree.getChildren().get(0).getKind()) {
            case ImportDeclr:
                resolveImportsRecursion(tree.getChildren().get(0));
            case ImportDeclrs:
                buildImports(tree.getChildren().get(0));
                resolveImportsRecursion(tree.getChildren().get(1));
        }
    }

    private void resolveImportsRecursion(ParseTree tree) {
        ParseTree importDeclr = tree.getChildren().get(0);
        ArrayList<String> newImport = new ArrayList<>();
        RecursionResolve.resolveName(importDeclr.getChildren().get(1), newImport);
        switch (importDeclr.getKind()) {
            case SingleTypeImportDeclr:
                singleTypeImport.add(newImport);
                break;
            case TypeImportOnDemand:
                onDemandTypeImport.add(newImport);
                break;
        }
    }

    @Override
    public void weed() { }

    @Override
    public void printInfo() {
        System.err.println("Import Info");
    }
}
