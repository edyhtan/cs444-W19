package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionBinaryNode;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;
import java.util.Arrays;

public class ExpressionBinary extends Expression {
    private Symbol kind, operator;
    private Expression LHS, RHS;

    public ExpressionBinary(ExpressionBinaryNode node) {
        kind = node.getKind();
        operator = node.getOperator();
        LHS = Expression.convertExpressionNode(node.getLHS());
        RHS = Expression.convertExpressionNode(node.getRHS());
    }

    public Symbol getOperator() {
        return operator;
    }

    public Symbol getKind() {
        return kind;
    }

    public Expression getLHS() {
        return LHS;
    }

    public Expression getRHS() {
        return RHS;
    }

    @Override
    public void addEnv(LocalEnv env) {
        super.addEnv(env);
        LHS.addEnv(env);
        RHS.addEnv(env);
    }

    @Override
    public void validate() throws NamingResolveException {
        LHS.validate();
        RHS.validate();
    }

    public boolean isAssignable(JoosType LHS, JoosType RHS) {
        if (RHS.equals(JoosType.NULL)) return true;
        if (LHS.equals(RHS)) return true;
        if (JoosType.isPrimitive(LHS) && JoosType.isPrimitive(RHS)) {
            if ((LHS.equals("int") && (RHS.equals("char") || RHS.equals("short") || RHS.equals("byte")))
                    && (LHS.equals("short") && RHS.equals("byte"))) {
                return true;
            }
            return false;
        } else {
            // TODO: check here
            if (RHS.hasParent(LHS) || (RHS.isA(LHS))) return true;
            else return false;
        }
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        ArrayList<String> string = new ArrayList<>(Arrays.asList("java", "lang", "String"));
        JoosType stringType = JoosType.getJoosType(string);
        JoosType lhsType = LHS.getType();
        JoosType rhsType = RHS.getType();

        switch (operator) {
            case Plus:
                if ((lhsType.getTypeName().equals(string) && !rhsType.equals("void"))
                        || (rhsType.getTypeName().equals(string) && !lhsType.equals("void"))) {
                    joosType = stringType;
                } else if (JoosType.isNumber(lhsType) && JoosType.isNumber(rhsType)) {
                    joosType = JoosType.getJoosType("int");
                }
                break;
            // assignability
            case Equal:
                if (isAssignable(lhsType, rhsType)) {
                    joosType = rhsType;
                } else {
                    throw new TypeCheckException("Cannot assign type "
                            + rhsType.getTypeName() + " to " + lhsType.getTypeName());
                }
                break;
            // arithmetic operations
            case Minus:
            case Star:
            case Slash:
            case Percent:
                if (JoosType.isNumber(lhsType) && JoosType.isNumber(rhsType)) {
                    joosType = JoosType.getJoosType("int");
                } else {
                    throw new TypeCheckException("Cannot perform operation " + operator + " on non-numeric types.");
                }
                break;
            // comparison
            case EQ:
            case NE:
                if ((JoosType.isNumber(lhsType) && JoosType.isNumber(rhsType))
                        || lhsType.isA(rhsType)) {
                    joosType = JoosType.getJoosType("boolean");
                } else {
                    throw new TypeCheckException("Cannot compare type " + lhsType.getTypeName()
                            + " with " + rhsType.getTypeName());
                }
                break;
            case GE:
            case GT:
            case LT:
            case LE:
                if (JoosType.isNumber(lhsType) && JoosType.isNumber(rhsType)) {
                    joosType = JoosType.getJoosType("boolean");
                } else {
                    throw new TypeCheckException("Cannot compare type " + lhsType.getTypeName()
                            + " with " + rhsType.getTypeName());
                }
                break;
            case Instanceof:
                if (lhsType.getTypeName().equals(rhsType.getTypeName())
                        // TODO: check here, WIP
                        || (lhsType.hasParent(rhsType))) {
                    joosType = JoosType.getJoosType("boolean");
                }
                break;


        }
        return joosType;
    }
}
