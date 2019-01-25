/*
    Main Scanner Class

    Created by : Ye Hua (Edward) Tan
 */

package Scanner;

import Exceptions.InvalidCharacterException;
import Token.Token;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

public class JoosScan {
    private FileScan reader;
    private ArrayList<Token> output = new ArrayList<>();

    public JoosScan (File file) throws FileNotFoundException {
        reader = new FileScan(file);
    }

    public void scan() throws InvalidCharacterException{
        while (reader.hasNext()) {
            char c = reader.nextChar();

            if (c > 127) {
                throw new InvalidCharacterException(c);
            }

            System.out.printf("%c : %d\n", c, (int) c);

            //TODO: get a DFA please....
        }
    }

    public ArrayList<Token> getOutput() {
        return output;
    }

    //Reader class to read characters one by one, automatically skips line separators
    private class FileScan {
        Scanner scanner;
        String curString;

        FileScan(File file) throws FileNotFoundException {
            scanner = new Scanner(file);
            curString = "";
        }

        /**
         * Returns the next character in the output stream.
         * returns 0 if there are no next available char.
         *
         * @return next available character or 0.
         */
        char nextChar() {
            if (curString.length() == 0) {
                boolean hasNext = false;
                while (scanner.hasNextLine()) {
                    curString = scanner.nextLine();
                    if (curString.length() > 0) {
                        hasNext = true;
                        break;
                    }
                }

                if (!hasNext) {
                    return 0;
                }
            }
            char ret = curString.charAt(0);
            curString = curString.substring(1);
            return ret;
        }

        boolean hasNext() {
            return curString.length() > 0 | scanner.hasNextLine();
        }
    }
}
