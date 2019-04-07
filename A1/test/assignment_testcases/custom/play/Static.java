public class Static extends Main {
    public int a = 4;

    public Static() { }

    public Static(int x) {
        a = x;
        this.a = 70;
    }

    public int m() {
        while (a>0) {
            int y = 0;
            a = y;
        }
        return 0;
    }
}