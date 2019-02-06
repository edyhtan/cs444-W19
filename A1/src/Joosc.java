import Exceptions.InvalidCharacterException;
import Exceptions.InvalidSyntaxException;
import Exceptions.InvalidTokenException;
import Parser.JoosParse;
import Parser.LRGrammar.ParseTree;
import Scanner.JoosScan;
import Token.Token;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;

public class Joosc {
    public static void main(String args[]) {
        try {
            if (args.length != 1) {
                throw new Exception("ERROR: incorrect number of parameter, the size should be 1.");
            }

            JoosScan scan = new JoosScan(new File(args[0]));
            scan.scan();
            ArrayList<Token> tokens = scan.getOutput();

            int i = 1;
            for (Token token : tokens) {
                System.out.printf("%d. %-9s :  %15s\n", i, token.getLexeme(), token.getKind());
                i++;
            }

            System.out.println();

            // TODO: add parsing
            JoosParse parse = new JoosParse();
            parse.parse(tokens);
            ParseTree tree = parse.getTree();

        } catch (FileNotFoundException e) {
            System.err.printf("ERROR: file not found, %s\n", e.getCause());
            System.exit(2);
        } catch (InvalidCharacterException e) {
            System.err.printf("ERROR: invalid characters %s\n", e.getInvalidChar());
            System.exit(42);
        } catch (InvalidTokenException e) {
            System.err.printf("ERROR: invalid lexeme: {%s} (%c, %d)\n", e.getInvalidLexeme(), e.getCurChar(), (int) e.getCurChar());
            e.printExistingTokens();
        } catch (InvalidSyntaxException e) {
            System.err.printf("ERROR: invalid syntax at %d, on state %d, with input %s\n", e.getLocation(), e.getState(), e.getInput());
            e.printParseTree();
            System.exit(2);
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(2);
        }
    }
}