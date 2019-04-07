public class A {

    public A() {
    }

    public static int test() {
//        byte b0 = (byte)-128;
//        byte b1 = (byte)127;
//
//        short s0 = (short)-32768;
//        short s1 = (short)32767;
//
//        char c0 = (char)0;
//        char c1 = (char)65535;
//
//
//        int i0 = (int)-2147483648;
//        int i1 = (int)2147483647;
//
//        return 0;

        int i = 0;

        while (i < 123) {
            int j = 0;
            for (; i < 123; i = i + 2) {
                while (i < 10) {
                    i = i + 3;
                    j = j + 3;
                }
            }
        }

//        if (i > 123) {
//            return 123;
//        }
        return i;
    }


}
