public class A {

    public A(){}
    public static int test() {
        return new A().sim_and(65535-128, 255-4);
    }


    public int sim_and(int x, int y) {
        if (x==0 || y==0) return 0;
        boolean bit0 = (x%2!=0 && y%2!=0);
        int result = sim_and(x/2, y/2)*2;
        if (bit0) result = result+1;
        return result;
    }

}
