public class A {
    public A() {
    }

    protected int x;

    public int m(java.util.Vector x) {
        return x.size();
    }

    public void m2() {
        java.lang.System.exit();
    }

    public int m1() {
        return x;
    }

    public int m3() {
        return m2();
    }

    public int m4() {
        return java.util.Calendar.MONDAY;
    }

    public void m5() {
        new A().x = 42;
    }
}