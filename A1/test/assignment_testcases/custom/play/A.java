public class A {

    public A() {}
    public static int test(int a, int b) {
        A someA = new A();
        if(someA instanceof A) return 1;
        return 2;
    }

}