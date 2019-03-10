package Joosc;

import java.io.File;

public class FullRunSuite {
    public static void main(String args[]) {
        File folder = new File("test/assignment_testcases/" + args[0]);
        File[] listOfFiles = folder.listFiles();

        String[] arg = {args[0], "", "-full"};
        System.out.println("Running all tests for " + args[0]);
        for (int i = 0; i < listOfFiles.length; i++) {
            arg[1] = listOfFiles[i].getName();
            MultiFileTest.run(arg);
        }
    }
}
