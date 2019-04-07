public class A {

    public A() {}
    public int m(int x) {
        while (x>0) x=x-1;
        return x;
    }
    public static int test() {
        return new A().m(17)+123;
    }

}