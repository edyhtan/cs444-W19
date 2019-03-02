public class LazyBoolean {
  public LazyBoolean() {}
  public boolean m(boolean x) {
    return (x && true) || x;
  } //
}