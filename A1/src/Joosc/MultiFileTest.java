package Joosc;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.stream.Collector;
import java.util.stream.Stream;

public class MultiFileTest {
    public static void main(String args[]) {
        String assignment = args[0];
        String testcases = args[1];
        String path = String.format("./test/assignment_testcases/%s/%s", assignment, testcases);
//        System.out.println("Working Directory = " + System.getProperty("user.dir"));
        System.err.println(testcases);
        if(testcases.contains(".java")) {
            Joosc.main(new String[]{path});
        }

        try (Stream<Path> paths = Files.walk(Paths.get(path))) {
            Joosc.main((String[]) paths.filter(Files::isRegularFile).map(Path::toString).toArray(String[]::new));
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Nothing");
        }
    }
}
