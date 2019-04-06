public class A {

    public A() {}
    public static int test(int a, int b) {
        A someA = new A();
        return someA instanceof Object;
    }

}