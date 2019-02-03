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
    enum Mode {
      REG, STR_LITERAL, COMMENTS
    };

    private FileScan reader;
    private ArrayList<Token> output = new ArrayList<>();

    private Mode mode = Mode.REG;

    public JoosScan (File file) throws FileNotFoundException {
        reader = new FileScan(file);
    }

    public boolean isValidChar(char c) {
        boolean isValid = true;
        switch (mode) {
            case REG:
                isValid = (c != 32 && c != '\t');
            case STR_LITERAL:
                isValid = isValid && (c != '\n');
        }
        return isValid;
    }

    public void scan() throws InvalidCharacterException, FileNotFoundException, InvalidTokenException{
        DFA dfa = new DFA();
        int lastFinalState = 0;
        String lastFinalStateLexeme = "";

        // maximal munch scanning
        while (reader.hasNext()) {
            char c = reader.nextChar();

            if (c > 127) {
                throw new InvalidCharacterException(c);
            }

            if (isValidChar(c)) {
                dfa.next(c);

                // check for conditions to start special scanning mode
                if (dfa.getStateName().equals("char$'") || dfa.getStateName().equals("string$\"")) {
                    mode = Mode.STR_LITERAL;
                } else if (dfa.getStateName().equals("comment$/*")) {
                    mode = Mode.COMMENTS;
                } else if (dfa.getStateName().equals("char") || dfa.getStateName().equals("string") ||
                        dfa.getStateName().equals("comment")) {
                    mode = Mode.REG;
                } else if (dfa.getStateName().equals("comment$//")) {
                    reader.nextLine();
                }

                // reach a final state (currently largest acceptable token)
                if (dfa.isFinal()) {
                    lastFinalState = dfa.getState();
                    lastFinalStateLexeme = dfa.getLexeme();
                }

                // backtracking
                if (dfa.isErr()) {
                    if (lastFinalState == 0) {
                        throw new InvalidTokenException(dfa.getLexeme(), output, c);
                    }
                    if (!dfa.getKind(lastFinalState).equals("comment")) {
                        output.add(new Token(lastFinalStateLexeme, dfa.getKind(lastFinalState)));
                    }

                    // reset dfa
                    reader.curString = dfa.breakLexeme(lastFinalStateLexeme) + reader.curString;
                    lastFinalState = 0;
                    lastFinalStateLexeme = "";
                    dfa.reset();
                }
            } else {
                // stuck
                if (dfa.getState() == 0) {
                    dfa.reset();
                    continue;
                }
                if (!dfa.isFinal()) {
                    throw new InvalidTokenException(dfa.getLexeme(), output, c);
                }
                if (!dfa.getKind().equals("comment")) {
                    output.add(new Token(dfa.getLexeme(), dfa.getKind()));
                }

                // reset dfa
                lastFinalState = 0;
                lastFinalStateLexeme = "";
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
        boolean outputNewLine = false;

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
                if (!outputNewLine) {
                    outputNewLine = true;
                    return '\n';
                }
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

        void nextLine() {
            curString = scanner.hasNextLine() ?  scanner.nextLine() : "";
        }

        boolean hasNext() {
            return curString.length() > 0 | scanner.hasNextLine();
        }
    }
}
