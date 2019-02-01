package Parser;

import java.util.List;

public class Rule {
    private String lhs;
    private List<String> rhs;

    public Rule(String lhs, List<String> rhs) {
        this.lhs = lhs;
        this.rhs = rhs;
    }

    public String getLhs() {
        return lhs;
    }

    public List<String> getRhs() {
        return rhs;
    }

    public void print() {
        System.out.print(lhs + " ");
        if(!rhs.isEmpty()) {
            for (int i = 0; i < rhs.size(); ++i) {
                System.out.print(rhs.get(i));
            }
        }
        System.out.print("\n");
    }
}
