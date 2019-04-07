public class A {

    public A() {}

    public static int test() {
        Static x = new Static();
        int y = Integer.MAX_VALUE;

        if (x instanceof Static) {
            return x.a;
        }

        return 0;
    }

}