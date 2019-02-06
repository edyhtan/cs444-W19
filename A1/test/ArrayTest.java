public class A {
    public A() {
    }
    protected int[] x;
    public int m() {
        int[] x = new int[42];
        return x.length;
    }
    public int[] foo() { return null; }
}