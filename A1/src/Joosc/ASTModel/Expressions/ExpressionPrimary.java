package Joosc.ASTModel.Expressions;

import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;

public abstract class ExpressionPrimary extends Expression {
    @Override
    public abstract JoosType getType() throws TypeCheckException;
}
