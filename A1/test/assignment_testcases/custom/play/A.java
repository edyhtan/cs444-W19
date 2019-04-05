public class A {

    public A() {}
    public static int test(int a, int b) {
        if(false | 3/0==0) return 1;
        return 2;
    }

}