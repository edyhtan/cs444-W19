public class A {

    public A() {}
    public static int test() {
        int x = -200000+123;
        new A();
        x = x+100000;
        x = 100000+x;
        new A();
        return x;
    }

}