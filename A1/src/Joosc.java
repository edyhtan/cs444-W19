import Exceptions.InvalidCharacterException;
import Exceptions.InvalidTokenException;
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

            for (Token token: tokens) {
                System.out.printf("%-9s :  %15s\n", token.getLexeme(), token.getKind());
            }

            // TODO: add parsing

        } catch (FileNotFoundException e) {
            System.err.printf("ERROR: file %s not found %d\n", args[0]);
            System.exit(2);
        } catch (InvalidCharacterException e) {
            System.err.printf("ERROR: invalid characters %s\n", e.getInvalidChar());
            System.exit(42);
        } catch (InvalidTokenException e) {
            System.err.printf("ERROR: invalid lexeme: %s\n", e.getInvalidLexeme());
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(2);
        }
    }
}
