import Exceptions.InvalidCharacterException;
import Scanner.DFA;
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

            DFA dfa = new DFA();

            JoosScan scan = new JoosScan(new File(args[0]));
            scan.scan();
            ArrayList<Token> tokens = scan.getOutput();

            // TODO: add parsing

        } catch (FileNotFoundException e) {
            System.err.printf("ERROR: file %s not found\n", args[0]);
            System.exit(2);
        } catch (InvalidCharacterException e) {
            System.err.printf("ERROR: invalid characters\n", e.getInvalidChar());
            System.exit(42);
        } catch (Exception e) {
            System.err.printf("ERROR: \n", e.getMessage());
            System.exit(2);
        }
    }
}
