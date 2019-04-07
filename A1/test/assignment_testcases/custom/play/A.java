public class A {

    public A() {}

    public static int test() {
        int i = 0;

        while (i < 123) {
            int j = 0;
            for ( ; i < 123 ; i = i + 2) {
                while (i < 10) {
                    i = i + 3;
                    j = j + 3;
                }
            }
        }

        if (i > 123) {
            return 123;
        }
        return i;
    }
}
