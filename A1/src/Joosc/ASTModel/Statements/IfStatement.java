package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.IfStatementNode;
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


public class IfStatement extends HasScope implements Statement, HasExpression {
    private Expression expression;
    private Statement thenClause;
    private ElseBlock elseClause = null;
    private LocalEnv localEnv = null;
    private boolean parentIsStatic;

    public boolean in, out;

    public IfStatement(IfStatementNode node) {
        expression = Expression.convertExpressionNode(node.getExpression());
        thenClause = Statement.convertStatementNode(node.getThenClause());
        elseClause = node.getElseClause() == null ? null
                : new ElseBlock(Statement.convertStatementNode(node.getElseClause()));
        setNumLocalVars();
    }

    public Expression getExpression() {
        return expression;
    }

    public ElseBlock getElseClause() {
        return elseClause;
    }

    public Statement getThenClause() {
        return thenClause;
    }

    @Override
    public ArrayList<Statement> getBlock() {
        if (thenClause instanceof Block) {
            return ((Block) thenClause).getBlock();
        } else {
            ArrayList<Statement> statements = new ArrayList<>();
            statements.add(thenClause);
            return statements;
        }
    }

    @Override
    public void passDownScopes() {

    }

    @Override
    public void setNumLocalVars() {
        numLocalVars += Statement.findLocalVarCount(thenClause);
        if (elseClause != null) numLocalVars += elseClause.getNumLocalVars();
    }

    @Override
    public int getNumLocalVars() {
        return this.numLocalVars;
    }

    @Override
    public void reachabilityAnalysis(boolean input) throws UnreachableStatementException {
        in = input;
        thenClause.reachabilityAnalysis(in);
        out = in;
        if (elseClause != null) {
            elseClause.reachabilityAnalysis(in);
            out = thenClause.getOut() || elseClause.getOut();
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

    public void checkExpression(Env env) throws NamingResolveException {
        addEnv(env);
        expression.addEnv(env);
        expression.validate();
    }

    @Override
    public void checkType() throws TypeCheckException {
        if (!expression.getType().equals(JoosType.getJoosType("boolean"))) {
            throw new TypeCheckException("Condition expression must be a boolean type");
        }
    }

    @Override
    public void setParentIsStatic(boolean parentIsStatic) {
        this.parentIsStatic = parentIsStatic;
    }

    //Code Gen
    AsmWriter asmWriter;
    int offset;

    @Override
    public void codeGen(int indent) {
        this.offset = Program.PER_PROGRAM_COUNT;
        Program.PER_PROGRAM_COUNT++;

        expression.addWriter(asmWriter);
        thenClause.addWriter(asmWriter);
        if (elseClause != null) elseClause.addWriter(asmWriter);

        asmWriter.iffalse(expression, ".else" + offset, indent);

        asmWriter.indent(indent);
        asmWriter.println(";thenClause ...");
        thenClause.codeGen(indent + 1);
        asmWriter.println("");

        asmWriter.indent(indent);
        asmWriter.jmp(".endif" + offset);
        asmWriter.println("");

        asmWriter.indent(indent);
        asmWriter.label(".else" + offset);

        if (elseClause != null) {
            asmWriter.indent(indent + 1);
            asmWriter.println(";elseClause ...");
            elseClause.codeGen(indent + 1);
            asmWriter.println("");
        }

        asmWriter.indent(indent);
        asmWriter.label(".endif" + offset);


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
