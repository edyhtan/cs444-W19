public class A {

    public A(){}
    public static int test() {
<<<<<<< HEAD
        int x = 17;
        while (x>0) {
            int y = x;
            y=y-1;
            x = y;
        };
        return x;

=======
        int[] x = new int [3];
        x[0] = 1;
        return x[0];
>>>>>>> A5-code-gen-static
    }

}
