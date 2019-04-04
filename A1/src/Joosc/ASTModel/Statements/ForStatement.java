package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.ForStatementNode;
import Joosc.ASTModel.Expressions.ConstantExpression;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.ASTModel.Program;
import Joosc.AsmWriter.AsmWriter;
import Joosc.AsmWriter.Register;
import Joosc.Environment.Env;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;

public class ForStatement extends HasScope implements Statement, HasExpression {
    private Statement forInit = null;
    private Expression expression = null;
    private Statement forUpdate = null;
    public boolean in, out;
    private Block statement;
    private boolean parentIsStatic;

    public ForStatement(ForStatementNode node) {
        forInit = Statement.convertStatementNode(node.getForInit());
        forUpdate = Statement.convertStatementNode(node.getForUpdate());
        expression = Expression.convertExpressionNode(node.getExpression());
        statement = new Block(Statement.convertStatementNode(node.getStatement()));
        setNumLocalVars();
    }

    public Statement getStatement() {
        return statement;
    }

    public Expression getExpression() {
        return expression;
    }

    public Statement getForInit() {
        return forInit;
    }

    public Statement getForUpdate() {
        return forUpdate;
    }

    @Override
    public ArrayList<Statement> getBlock() {
        return statement.getBlock();
    }

    @Override
    public void passDownScopes() {

    }

    @Override
    public void setNumLocalVars() {
        if(forInit!= null) numLocalVars += Statement.findLocalVarCount(forInit);
        if(forUpdate!=null)numLocalVars += Statement.findLocalVarCount(forUpdate);
        numLocalVars += statement.getNumLocalVars();
    }

    @Override
    public int getNumLocalVars() {
        return this.numLocalVars;
    }

    @Override
    public void checkExpression(Env env) throws NamingResolveException {
        if (forInit != null) {
            ((HasExpression) forInit).checkExpression(env);
        }

        if (expression != null) {
            expression.validate();
        }
    }

    @Override
    public void checkType() throws TypeCheckException {
        if (forInit instanceof HasExpression) ((HasExpression) forInit).checkType();
        if (forUpdate instanceof HasExpression) ((HasExpression) forUpdate).checkType();
        if (statement instanceof HasExpression) ((HasExpression) statement).checkType();
        if (expression.getType() == JoosType.NULL) {
            throw new TypeCheckException("Cannot use NULL statements in for loop");
        }
    }

    @Override
    public void setParentIsStatic(boolean parentIsStatic) {
        this.parentIsStatic = parentIsStatic;
    }

    @Override
    public void reachabilityAnalysis(boolean input) throws UnreachableStatementException {
        in = input;
        if (!in) {
            throw new UnreachableStatementException("Unreachable statement");
        }
        if (expression == null) {
            statement.reachabilityAnalysis(in);
            out = false;
        } else {    // Cond exp is not null
            if (expression.isConstantExpression()) {
                ConstantExpression constantExpression = (ConstantExpression) expression;
                // Type checked. It must be a boolean exp. true or false
                if (constantExpression.evaluateConstant().toBoolean()) {
                    statement.reachabilityAnalysis(in);
                    out = false;
                } else {
                    statement.reachabilityAnalysis(false);
                    out = in;
                }
            } else {
                statement.reachabilityAnalysis(in);
                out = in;
            }
        }
    }

    @Override
    public boolean getIn() {
        return in;
    }

    @Override
    public boolean getOut() {
        return out;
    }

    //Code Gen
    AsmWriter asmWriter;
    int offset;

    @Override
    public void codeGen(int indent) {
        this.offset = Program.globalCount;
        Program.globalCount++;

        if(numLocalVars > 0) {
            asmWriter.indent(indent);
            // pop all local vars
            asmWriter.add(Register.esp, (numLocalVars * 4));
        }
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }

}
