package Joosc;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static Joosc.Joosc.RUN_SUITE_FLAG;
import static Joosc.Joosc.SHOW_EXCEPTION;

public class MultiFileTest {
    public static int run(String args[]) {
        String assignment = args[0];
        String testcases = args[1];
        String path = String.format("./test/assignment_testcases/%s/%s", assignment, testcases);
        ArrayList<String> argList = new ArrayList<>(Arrays.asList(args));
        RUN_SUITE_FLAG = argList.contains("-full");
        if(!RUN_SUITE_FLAG) System.out.println("Running test case: " + testcases);
        try {
            List<String> baseArgs = Files.walk(Paths.get("./stdlib2.0/java")).
                    filter(Files::isRegularFile).map(Path::toString).collect(Collectors.toList());

            if (testcases.contains(".java")) {
                ArrayList<String> allArgs = new ArrayList<>(baseArgs);
                allArgs.add(path);
//                allArgs.add("-full");
                int exitCode = Joosc.run(allArgs.toArray(new String[allArgs.size()]));
                if(RUN_SUITE_FLAG) {
                    if (testcases.startsWith("Je_") && Joosc.run(allArgs.toArray(new String[allArgs.size()])) != 42) {
                        SHOW_EXCEPTION = true;
                        System.err.println("Failed to detect error: " + testcases);
                    } else if (testcases.matches("^J[0-9]_.*") && Joosc.run(allArgs.toArray(new String[allArgs.size()])) != 0) {
                        SHOW_EXCEPTION = true;
                        System.err.println("Reported error in correct program: " + testcases);
                    } else {
                        SHOW_EXCEPTION = false;
                        System.out.println(testcases + ": " + exitCode);
                    }
                } else {
                    SHOW_EXCEPTION = true;
                    System.out.println(testcases + ": " + Joosc.run(allArgs.toArray(new String[allArgs.size()])));
                }
            } else {
                try (Stream<Path> paths = Files.walk(Paths.get(path))) {
                    ArrayList<String> allArgs = new ArrayList<>(baseArgs);
                    allArgs.addAll(Arrays.asList(paths.filter(Files::isRegularFile).map(Path::toString).toArray(String[]::new)));
                    //(new ArrayList<String>(allArgs)).forEach(x->System.err.println(x));
//                    allArgs.add("-full");
                    if(RUN_SUITE_FLAG) {
                        int exitCode = Joosc.run(allArgs.toArray(new String[allArgs.size()]));
                        if (testcases.startsWith("Je_") && Joosc.run(allArgs.toArray(new String[allArgs.size()])) != 42) {
                            SHOW_EXCEPTION = true;
                            System.err.println("Failed to detect error: " + testcases);
                        } else if (testcases.matches("^J[0-9]_.*") && Joosc.run(allArgs.toArray(new String[allArgs.size()])) != 0) {
                            SHOW_EXCEPTION = true;
                            System.err.println("Reported error in correct program: " + testcases);
                        } else {
                            SHOW_EXCEPTION = false;
                            System.out.println(testcases + ": " + exitCode);
                        }
                    } else {
                        SHOW_EXCEPTION = true;
                        System.out.println(testcases + ": " + Joosc.run(allArgs.toArray(new String[allArgs.size()])));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    System.out.println("Nothing");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Nothing");
        }
        return 2;
    }

    public static void main(String args[]) {
        run(args);
    }
}
