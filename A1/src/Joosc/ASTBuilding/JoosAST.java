package Joosc.ASTBuilding;

import Joosc.ASTBuilding.ASTStructures.Program;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.*;
import Joosc.Joosc;
import Joosc.Parser.LRGrammar.ParseTree;

public class JoosAST {
    private Program root;
    boolean WINDOWS = false;

    public JoosAST(ParseTree parseTree) throws ASTException {
        if (parseTree.getKind() != Symbol.S) {
            throw new InvalidParseTreeStructureException(parseTree, "Expecting S, got " + parseTree.getKind() + ".");
        }
        root = new Program(parseTree);
    }

    public void weed() throws WeedingFailureException {
        root.weed();
    }

    public Program getRoot() {
        return root;
    }

    public void checkFileName(String file) throws WrongFileNameException {
        String className = root.getClassName();

        if (WINDOWS) {
            // things looks messy on windows
            String[] splitFiles = file.split("\\\\");
            file = splitFiles[splitFiles.length - 1];
        }

        String filename = file.split("[.]")[0];
        String suffix = file.split("[.]")[1];


        if(!className.equals(filename)) {
            throw new WrongFileNameException("Class name does not match file name, found file name " + filename + ", class name " + className);
        }

        if(!suffix.equals("java")) {
            throw new WrongFileNameException("Incorrect input file suffix " + suffix);
        }
    }

    public void printASTInfo() {
        root.printInfo(0);
    }
}
