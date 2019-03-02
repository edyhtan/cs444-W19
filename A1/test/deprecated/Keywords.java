public abstract class Keywords {
    int integer;
    short shortNum;
    char character;
    long longNum;
    float floatingPoint;
    double doubleFloatingPoint;
    boolean bool;
    byte bytes;

    public Keywords(int integer, short shortNum) {
        this.integer = integer;
        this.shortNum = shortNum;
    }

    public static void dump() {
        return;
    }

    public int getInt() {
        while (integer < shortNum) {
            integer += 1;
        }

        if (bool) {
            bool = false;
        } else {
            bool = true;
        }

        return integer;
    }

    private int dump(int x) {
        return x;
    }

    protected int dump(int x, int y) {
        return y;
    }
}