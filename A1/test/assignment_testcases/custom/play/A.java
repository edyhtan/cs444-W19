public class A {

    public A() {}
    public static int test(int a, int b) {
        A someA = new A();
//        Hello hello = new Hello();
        Static s = new Static();
        Main m = new Main();
//        Main ms = new Static();
//        Static sm = new Main();

        if(m instanceof Static) {
            return 111;
        } else {
            if(m instanceof Main) {
                return 6;
            } else {
                return 33;
            }
        }
    }

}