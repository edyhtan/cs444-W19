/*
    Main Scanner Class

    Created by : Ye Hua (Edward) Tan
 */

package Scanner;

import Exceptions.InvalidCharacterException;
import Exceptions.InvalidTokenException;
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

    public void scan() throws InvalidCharacterException, FileNotFoundException, InvalidTokenException {
        DFA dfa = new DFA();
        int lastFinalState = 0;
        String lastFinalStateLexeme = "";

        // maximal munch scanning
        while (reader.hasNext()) {
            char c = reader.nextChar();

            if (c > 127) {
                throw new InvalidCharacterException(c);
            }

            if (c != 32 && c != 9 && c != 10 ) {
                dfa.next(c);
                if (dfa.isFinal()) {
                    lastFinalState = dfa.getState(); // used for Kind.
                    lastFinalStateLexeme = dfa.getLexeme();
                }

                if (dfa.isErr()) {
                    if (lastFinalState == 0) {
                        throw new InvalidTokenException(dfa.getLexeme());
                    }

                    output.add(new Token(lastFinalStateLexeme, dfa.getKind(lastFinalState)));
                    reader.curString = dfa.breakLexeme(lastFinalStateLexeme) + reader.curString;
                    lastFinalState = 0;
                    lastFinalStateLexeme = "";
                    dfa.reset();
                }
            } else { // stuck
                if (!dfa.isFinal()) {
                    throw new InvalidTokenException(dfa.getLexeme());
                }
                output.add(new Token(dfa.getLexeme(), dfa.getKind()));
                dfa.reset();
            }
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
                curString += " ";
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
