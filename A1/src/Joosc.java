import Exceptions.InvalidCharacterException;
import Scanner.JoosScan;

import java.io.File;
import java.io.FileNotFoundException;

public class Joosc {
    public static void main(String args[]) {
        try {
            if (args.length != 1) {
                throw new Exception("ERROR: incorrect number of parameter, the size should be 1.");
            }
            JoosScan scan = new JoosScan(new File(args[0]));
            scan.scan();
        } catch (FileNotFoundException e) {
            System.err.printf("ERROR: file %s not found", args[0]);
        } catch (InvalidCharacterException e) {
            System.err.printf("ERROR: invalid characters", e.getInvalidChar());
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }
}
