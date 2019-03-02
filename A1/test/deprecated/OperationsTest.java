public class OperationsTest {
    public OperationsTest() {}
    public int arith(int x) {
        return -2*x+87%x-(x/7);
    }

    public boolean compare(int x) {
        return (x<87) && (x>42) && (x<=86) && (x>=43) && (x==51) && (x!=52) ;
    }

    public boolean eagerBool(boolean x) {
        return (x & true) | !x;
    }

    public boolean lazyBool(boolean x) {
        return (x && true) || x;
    }

    public String strConcat(int x) {
        return "foo" + x + true + null;
    }

    public boolean m(Object x) {
        return x instanceof A;
    }

    public int primCast(byte x) {
        return (int)x;
    }

    public A refCast(Object x) {
        return (A)x;
    }
}