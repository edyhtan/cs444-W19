public class A {

    public A() {}
    public static int test() {
        Static x = new Static();
        Main y = x;

        if (true) {
            return y.a;
        }
        return 0;
    }
}