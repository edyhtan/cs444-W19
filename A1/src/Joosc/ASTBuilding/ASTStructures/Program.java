package Joosc.ASTBuilding.ASTStructures;

import Joosc.ASTBuilding.Constants.RecursionResolve;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.AST;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;
import java.util.stream.Collectors;

/**
 * The base of any Joos program
 **/
public class Program extends ASTNode {
    private ArrayList<String> packageDeclr;
    private ArrayList<ArrayList<String>> singleTypeImport;
    private ArrayList<ArrayList<String>> onDemandTypeImport;

    private TypeDeclrNode typeDeclr;

    public Program(ParseTree parseTree) throws ASTException {
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
                case ImportDeclrs:
                    buildImports(child);
                    break;
                case TypeDeclr:
                    typeDeclr = TypeDeclrNode.resolveTypeDeclrNode(child);
            }
        }
    }

    private void buildPackage(ParseTree tree) {
        packageDeclr = new ArrayList<>();
        RecursionResolve.resolveName(tree.getChildren().get(1), packageDeclr);
    }

    private void buildImports (ParseTree tree) throws InvalidParseTreeStructureException {
        ParseTree firstChild = tree.getChild(0);
        switch (firstChild.getKind()) {
            case ImportDeclr:
                resolveImportsRecursion(firstChild);
                break;
            case ImportDeclrs:
                buildImports(firstChild);
                resolveImportsRecursion(tree.getChild(1, Symbol.ImportDeclr));
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

    public String getClassName() {
        return typeDeclr.getName();
    }

    @Override
    public void weed() throws WeedingFailureException {
        typeDeclr.weed();
    }

    @Override
    public void printInfo(int level) {
        for (int i = 0; i < level; i += 1) {
            System.out.print(TREELEVEL);
        }
        System.out.println(TREEITEM + "Program:");
        String prefix = new String(new char[level+1]).replace("\0", TREELEVEL);
        if (packageDeclr != null) {
            System.out.println(prefix + TREEITEM + "Package:");
            System.out.println(prefix + TREELEVEL + TREESPACE + packageDeclr);
        }
        if (singleTypeImport != null && singleTypeImport.size() > 0) {
            System.out.println(prefix + TREEITEM + "Single type Imports:");
            for (ArrayList<String> p : singleTypeImport) {
                System.out.println(prefix + TREELEVEL + TREESPACE + p);
            }
        }
        if (onDemandTypeImport != null && onDemandTypeImport.size() > 0) {
            System.out.println(prefix + TREEITEM + "On Demand Type Imports:");
            for (ArrayList<String> p: onDemandTypeImport) {
                System.out.println(prefix + TREELEVEL + TREESPACE + p);
            }
        }
        typeDeclr.printInfo(level + 1);
    }

    public ArrayList<String> getPackageDeclr() {
        return packageDeclr;
    }

    public String getPackageName() {
        return packageDeclr == null ? "" : String.join(".", packageDeclr);
    }

    public ArrayList<ArrayList<String>> getSingleTypeImport() {
        return singleTypeImport;
    }

    public ArrayList<ArrayList<String>> getOnDemandTypeImport() {
        return onDemandTypeImport;
    }

    public TypeDeclrNode getTypeDeclr() {
        return typeDeclr;
    }
}
