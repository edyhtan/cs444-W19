package Joosc;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class MultiFileTest {

    public static int run(String args[]) {
        String assignment = args[0];
        String testcases = args[1];
        String path = String.format("./test/assignment_testcases/%s/%s", assignment, testcases);

        int ret = 0;
        boolean custom_flag = args.length > 2 && args[2].equals("-c");

        try {
            List<String> baseArgs = Files.walk(Paths.get("./stdlib2.0/java")).
                    filter(Files::isRegularFile).map(Path::toString).collect(Collectors.toList());

            if (testcases.contains(".java")) {
                ArrayList<String> allArgs = new ArrayList<>(custom_flag ? new ArrayList<>(): baseArgs);
                allArgs.add(path);
                allArgs.add("-full");
                ret =  Joosc.run(allArgs.toArray(new String[allArgs.size()]));
            } else {
                try (Stream<Path> paths = Files.walk(Paths.get(path))) {
                    ArrayList<String> allArgs = new ArrayList<>(custom_flag ? new ArrayList<>(): baseArgs);
                    allArgs.addAll(Arrays.asList(paths.filter(Files::isRegularFile).map(Path::toString).toArray(String[]::new)));
                    //(new ArrayList<String>(allArgs)).forEach(x->System.err.println(x));
                    allArgs.add("-full");
                    ret = Joosc.run(allArgs.toArray(new String[allArgs.size()]));
                } catch (Exception e) {
                    e.printStackTrace();
                    System.out.println("Nothing");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Nothing");
        }
        return ret;
    }

    public static void main(String args[]) {
        run(args);
    }
}
