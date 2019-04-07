package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.WhileStatementNode;
import Joosc.ASTModel.Expressions.ConstantExpression;
import Joosc.ASTModel.Expressions.Expression;
import Joosc.ASTModel.Program;
import Joosc.AsmWriter.AsmWriter;
import Joosc.AsmWriter.Register;
import Joosc.Environment.Env;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;

public class WhileStatement extends HasScope implements Statement, HasExpression {
    private Expression expression;
    private Statement statement;
    boolean in, out;
    private boolean parentIsStatic;

    public WhileStatement(WhileStatementNode node) {
        expression = Expression.convertExpressionNode(node.getExpression());
        statement = Statement.convertStatementNode(node.getStatement());
        setNumLocalVars();
    }

    public Expression getExpression() {
        return expression;
    }

    public Statement getStatement() {
        return statement;
    }

    @Override
    public ArrayList<Statement> getBlock() {
        ArrayList<Statement> statements = new ArrayList<>();
        statements.add(statement);
        return statements;
    }

    @Override
    public void passDownScopes() {

    }

    @Override
    public void setNumLocalVars() {
        this.numLocalVars = Statement.findLocalVarCount(statement);
    }

    @Override
    public int getNumLocalVars() {
        return this.numLocalVars;
    }
    
    @Override
    public void checkExpression(Env env) throws NamingResolveException {
        expression.addEnv(env);
        expression.validate();
    }

    @Override
    public void checkType() throws TypeCheckException {
        if (!expression.getType().equals(JoosType.getJoosType("boolean"))) {
            throw new TypeCheckException("Condition expression must be boolean type");
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
        if (expression.isConstantExpression()) {
            ConstantExpression constantExpression = (ConstantExpression) expression;
            if (constantExpression.evaluateConstant().type.equals("boolean")) {
                if (constantExpression.evaluateConstant().toBoolean()) {    // infinite loop
                    statement.reachabilityAnalysis(in);
                    out = false;
                } else {
                    statement.reachabilityAnalysis(false);
                    out = in;
                }
            } else {
                throw new UnreachableStatementException("Should actually be a type check error. Expression in while condition must be boolean");
            }
        } else {
            statement.reachabilityAnalysis(in);
            out = in;
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
        this.offset = Program.PER_PROGRAM_COUNT;
        Program.PER_PROGRAM_COUNT++;
        ((LocalEnv)getEnv()).getSymbolTable().assignOffset();

        expression.addWriter(asmWriter);
        statement.addWriter(asmWriter);

        asmWriter.indent(indent);
        asmWriter.label(".while" + offset);

        asmWriter.iffalse(expression, ".endwhile" + offset, indent + 1);

        asmWriter.indent(indent + 1);
        asmWriter.comment("while statement code...");
        statement.codeGen(indent + 1);

        asmWriter.indent(indent + 1);
        asmWriter.jmp(".while" + offset);

        asmWriter.println("");

        asmWriter.indent(indent);
        asmWriter.label(".endwhile" + offset);
        asmWriter.println("");

        if (numLocalVars > 0) {
            asmWriter.indent(indent + 1);
            // pop all local vars
            asmWriter.add(Register.esp, (numLocalVars * 4));
            asmWriter.println("");
        }
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }

}
