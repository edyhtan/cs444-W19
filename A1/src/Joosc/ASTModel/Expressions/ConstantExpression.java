package Joosc.ASTModel.Expressions;

import Joosc.TypeSystem.JoosType;

public interface ConstantExpression {
    class ConstantLiteral {
        public String literal;
        public JoosType type;

        public ConstantLiteral(String literal, JoosType type) {
            this.literal = literal;
            this.type = type;
        }

        public ConstantLiteral(int literal, JoosType type) {
            this.literal = Integer.toString(literal);
            this.type = type;
        }

        public ConstantLiteral(boolean literal, JoosType type) {
            this.literal = literal ? "true" : "false";
            this.type = type;
        }

        public int toInt() {
            return Integer.parseInt(literal);
        }

        public long toLong() {
            return Long.parseLong(literal);
        }

        public boolean toBoolean() {
            return literal.equals("true");
        }
    }

    ConstantLiteral evaluateConstant();
}
