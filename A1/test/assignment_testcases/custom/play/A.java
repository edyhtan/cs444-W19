public class A {

    public A() {}
    public static int test(int a, int b) {
        A someA = new A();
        if( someA instanceof Object) {
            return 111;
        } else return 888;
    }

}