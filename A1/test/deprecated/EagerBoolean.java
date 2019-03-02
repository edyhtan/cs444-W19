public class EagerBoolean {
    public EagerBoolean() {}
    public boolean m(boolean x) {
        return (x & true) | !x;
    }
}