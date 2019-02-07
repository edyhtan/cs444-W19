public class ControlFlowTest {

    protected ControlFlowTest() {
    }

    public int m(int x) {
        int y = 0;
        if (x == 0) y = 42;
        else y = 87;
        return y;
    }

    public static int m(int x) {
        while (x>0) x=x-1;
        return x;
    }

    public int m(int x) {
        int y = 0;
        for (int i=x; i>0; i=i-1) y=y+1;
        return y;
    }
}