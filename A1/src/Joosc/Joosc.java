package Joosc;

import Joosc.Exceptions.InvalidCharacterException;
import Joosc.Exceptions.InvalidSyntaxException;
import Joosc.Exceptions.InvalidTokenException;
import Joosc.Parser.JoosParse;
import Joosc.Parser.LRGrammar.ParseTree;
import Joosc.Scanner.JoosScan;
import Joosc.Token.Token;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;

public class Joosc {
    public static boolean IDE_FLAG = true; // turn off when compiling with make

    public static void main(String args[]) {
        try {
            if (args.length > 1) {
                throw new Exception("ERROR: incorrect number of parameter, the size should be 1.");
            }

            JoosScan scan = new JoosScan(new File(args[0]));
            scan.scan();
            ArrayList<Token> tokens = scan.getOutput();

            int i = 1;
            for (Token token : tokens) {
                System.out.printf("%d. %-30s :  %15s\n", i, token.getLexeme(), token.getKind());
                i++;
            }
            System.out.println();

            // TODO: add parsing
            JoosParse parse = new JoosParse();
            parse.parse(tokens);
            ParseTree tree = parse.getTree();

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
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(2);
        }
    }
}