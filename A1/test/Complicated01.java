package test;

import java.lang.*;
import java.io.*;

public class Complicated extends java.lang.Serializable implements Object {

    public String num = " ";
    protected static Object obj = new Object();
    public final byte[] arg = new byte[3];

    public Complicated() {
    }

    protected int x;

    public int m(Java.util.Vector x) {
        return x.size();
    }

    public static native int m(int i);
}