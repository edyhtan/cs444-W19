public class Hello {
    public Hello() {
    }

    public void whatYouSee() {
    }

    public boolean like(Hello who) {
        who.whatYouSee();
        return who.like(this);
    }
}