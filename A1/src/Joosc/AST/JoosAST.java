package Joosc.AST;

import Joosc.AST.ASTStructures.Program;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Exceptions.WrongFileNameException;
import Joosc.Parser.LRGrammar.ParseTree;

public class JoosAST {
    private Program root;

    public JoosAST(ParseTree parseTree) throws ASTException {
        if (parseTree.getKind() != Symbol.S) {
            throw new InvalidParseTreeStructureException(parseTree, "Expecting S, got " + parseTree.getKind() + ".");
        }
        root = new Program(parseTree);
    }

    public Program getRoot(String file) throws WrongFileNameException{
        return root;
    }

    public void checkFileName(String file) throws WrongFileNameException {
        String className = root.getClassName();

        String filename = file.split("[.]")[0];
        String suffix = file.split("[.]")[1];

        if(!className.equals(filename)) {
            throw new WrongFileNameException("Class name does not match file name, found file name " + filename + ", class name " + className);
        }
        if(!suffix.equals(".java")) {
            throw new WrongFileNameException("Incorrect input file suffix " + suffix);
        }
    }

    public void printASTInfo() {
        root.printInfo(0);
    }
}
