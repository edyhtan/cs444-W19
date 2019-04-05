public class A {

    public A() {}
    public static int test(int a, int b) {
        if(5 == 4 && 3/0 == 0) return 1;
        return 2;
    }

}