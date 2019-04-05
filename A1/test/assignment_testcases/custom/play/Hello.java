public class Hello {

    public Hello k = null;

    public static int staticInt = 0;

    public Hello() {
        new Hello();
    }

    public Hello(int a) {

    }

    public void whatYouSee() {
    }

    public boolean like(Hello who) {
        return who.like(this);
    }

    public Hello k() {
        return this;
    }
}