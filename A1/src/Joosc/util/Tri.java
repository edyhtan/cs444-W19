package Joosc.util;

public class Tri <T1, T2, T3> {
    private T1 item0;
    private T2 item1;
    private T3 item2;

    public Tri(T1 item00, T2 item01, T3 item10) {
        this.item0 = item00;
        this.item1 = item01;
        this.item2 = item10;
    }

    public T1 get1() {
        return item0;
    }

    public T2 get2() {
        return item1;
    }

    public T3 get3() {
        return item2;
    }

}
