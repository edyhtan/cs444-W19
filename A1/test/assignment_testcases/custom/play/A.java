public class A {

    public A() {}
    public static int test() {
        Main m = new Main();
        Static s = (Static) m;
        Hello h = new Hello();

        if(h instanceof Interface) {
            return 6;
        }
        return 1;
    }

}