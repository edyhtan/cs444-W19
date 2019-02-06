public final class A {
    protected A() {
    }

    protected int x = 42;

    protected A a = null;

    public A returnThis() {
        return this;
    }

    public String string = " ";

    public final int m() {
        return 42;
    }

    protected boolean bool;
    protected boolean b = false;

    protected char c;
    protected char aChar = 'a';

    protected byte b;

    protected short aShort;

    // nested block
    public int m1() {
        int x = 42;
        int y = 87;
        {
            int z = x + y;
            return z;
        }
    }

    public int m(int x) {
        if (x == 42)
            return 87;
        else
            return 17;
    }

    // omitted void return
    public void m() {
        /* return; */
    }

    // arbitrary local declr
    public void m() {
        int x = 42;
        x = x + 1;
        int y = x + 87;
    }

    public void compoundName() {
        java.util.Vector x = null;
    }

}