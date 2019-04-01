package Joosc;

import Joosc.TypeSystem.JoosType;

import java.io.File;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.regex.Pattern;

public class FullRunSuite {
    public static void main(String args[]) {
        File folder = new File("test/assignment_testcases/" + args[0]);
        File[] listOfFiles = folder.listFiles();

        String[] arg = {args[0], "", "-c"};

        System.setErr(new PrintStream(new OutputStream() {
            public void write(int b) {
            }
        }));

        int correct = 0;
        int i = 0;
        for (; i < listOfFiles.length; i++) {
            arg[1] = listOfFiles[i].getName();

            int expected = Pattern.matches("^Je.*$", arg[1]) ? 42 : 0;
            int result = MultiFileTest.run(arg);

            if (expected == result) {
                correct++;
            }
            String status = (result == 0 || result == 42) ? (expected == result) ? "PASSED" : "FAILED" : "ERROR(" + result + ")";
            System.out.printf(getColor(status) + "\n", status, arg[1]);
            JoosType.clean();
        }
        System.out.printf("test results: %d/%d", correct, i);
    }

    private static String getColor(String result) {
        if (result.equals("PASSED")) {
            return "%-8s %s";
        } else if (result.equals("FAILED")) {
            return "\u001B[31m%-8s %s\u001B[0m";
        } else {
            return "\u001B[33m%-8s %s\u001B[0m";
        }
    }

}
