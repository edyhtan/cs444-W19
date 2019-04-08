import java.io.PrintStream;
public class A {

    public A() {
    }

    public static int test() {
        String str1 = "123";
        String str2 = "321";
        String str3 = str1.concat(str2);
        PrintStream ps = new PrintStream();
        ps.println(str3);
        return 233;
    }
}
