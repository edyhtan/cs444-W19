package Joosc;

import Joosc.ASTBuilding.JoosAST;
import Joosc.ASTModel.Program;
import Joosc.Environment.GlobalEnv;
import Joosc.Exceptions.*;

import Joosc.Parser.JoosParse;
import Joosc.Parser.LRGrammar.ParseTree;
import Joosc.Scanner.JoosScan;
import Joosc.Token.Token;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.stream.Collectors;

public class Joosc {
    public static boolean IDE_FLAG = true;

    private static String getFileName(String path) {
        String[] temp = path.split("/");
        return temp[temp.length - 1];
    }

    private static JoosAST process(String filename) {
        JoosAST ast = null;

        try {
            JoosScan scan = new JoosScan(new File(filename));
            String file = getFileName(filename);
            scan.scan();
            ArrayList<Token> tokens = scan.getOutput();

            // Parsing
            JoosParse parse = new JoosParse();
            parse.parse(tokens);
            ParseTree tree = parse.getTree();

            ast = new JoosAST(tree);
            ast.checkFileName(file);
            ast.printASTInfo();
            ast.weed();
        } catch (FileNotFoundException e) {
            System.err.printf("ERROR: file not found: %s\n", e.getLocalizedMessage());
            System.exit(2);
        } catch (InvalidCharacterException e) {
            System.err.printf("ERROR: invalid characters %s\n", e.getInvalidChar());
            System.exit(42);
        } catch (InvalidTokenException e) {
            System.err.printf("ERROR: invalid lexeme: {%s} (%c, %d)\n", e.getInvalidLexeme(), e.getCurChar(), (int) e.getCurChar());
            e.printExistingTokens();
            System.exit(42);
        } catch (InvalidSyntaxException e) {
            System.err.printf("ERROR: invalid syntax at %d, on state %d, with input %s\n", e.getLocation(), e.getState(), e.getInput());
            e.printParseTree();
            System.exit(42);
        } catch (InvalidParseTreeStructureException e) {
            e.printStackTrace();
            System.err.printf("ERROR: %s", e.getLocalizedMessage());
            System.exit(42);
        } catch (InvalidParseTreeException e) {
            System.err.printf("ERROR: %s\n", e.getLocalizedMessage());
            System.exit(42);
        } catch (WrongFileNameException e) {
            System.err.printf("ERROR: %s\n", e.getLocalizedMessage());
            System.exit(42);
        } catch (JoosException e) {
            e.printStackTrace();
            System.err.println("Something wrong with your shit...");
            System.err.printf("ERROR: %s\n", e.getLocalizedMessage());
            System.exit(42);
        } catch (WeedingFailureException e) {
            e.printStackTrace();
            System.err.println(e.getLocalizedMessage());
            System.exit(42);
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(2);
        }
        return ast;
    }

    public static void main(String args[]) {
        ArrayList<String> argList = new ArrayList<>(Arrays.asList(args));
        IDE_FLAG = !argList.contains("-t");
        argList.remove("-t");

        ArrayList<JoosAST> astList = argList.stream().map(filename -> process(filename))
                .collect(Collectors.toCollection(ArrayList::new));
        ArrayList<Program> asts = astList.stream().map(x -> new Program(x.getRoot()))
                .collect(Collectors.toCollection(ArrayList::new));

        try {
            GlobalEnv globalEnvironment = new GlobalEnv(asts);
            globalEnvironment.resolveName();
        } catch (NamingResolveException e) {

        }
    }
}