public class A {
    public static int b = A.a; // b = 0
    public static int a = 22; // a = 22

    public A() {}

    public static int test() {
        return A.a + A.b + 101;
    }

}
