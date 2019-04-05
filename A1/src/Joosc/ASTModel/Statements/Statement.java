package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.*;
import Joosc.ASTModel.AST;
import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.UnreachableStatementException;

public interface Statement extends AST {

    void reachabilityAnalysis(boolean input) throws UnreachableStatementException;

    boolean getIn();

    boolean getOut();

    static Statement convertStatementNode(StatementNode node) {
        if (node instanceof ForStatementNode) {
            return new ForStatement((ForStatementNode) node);
        }
        if (node instanceof ExpressionStatementNode) {
            return new ExpressionStatement((ExpressionStatementNode) node);
        }
        if (node instanceof IfStatementNode) {
            return new IfStatement((IfStatementNode) node);
        }
        if (node instanceof LocalVarDeclrStatementNode)
            return new LocalVarDeclrStatement((LocalVarDeclrStatementNode) node);
        if (node instanceof PlainStatementNode) {
            return new PlainStatement((PlainStatementNode) node);
        }
        if (node instanceof ReturnStatementNode) {
            return new ReturnStatement((ReturnStatementNode) node);
        }
        if (node instanceof WhileStatementNode) {
            return new WhileStatement((WhileStatementNode) node);
        }
        if (node instanceof BlockNode) {
            return new Block((BlockNode) node);
        }

        return null;
    }

    static int findLocalVarCount(Statement statement) {
        int count = 0;
        if (statement instanceof LocalVarDeclrStatement) count++;
        if (statement instanceof Block) count += ((Block) statement).getNumLocalVars();
        return count;
    }

    static void assignOffset(Statement statement, LocalEnv localEnv) {
        if (statement instanceof LocalVarDeclrStatement) {
            localEnv.assignOffset(((LocalVarDeclrStatement) statement).getId(), -4 * localEnv.getLastOffset());
            localEnv.incLastOffset();
        }
        if (statement instanceof Block) {
            for (Statement blkStatement : ((Block) statement).getBlock()) {
                if (blkStatement instanceof LocalVarDeclrStatement) {
                    localEnv.assignOffset(((LocalVarDeclrStatement) blkStatement).getId(), -4 * localEnv.getLastOffset());
                    localEnv.incLastOffset();
                }
            }
        }
        if (statement instanceof ForStatement) {
            if (((ForStatement) statement).getForInit() instanceof LocalVarDeclrStatement) {
                ((ForStatement) statement).getEnv().assignOffset(((LocalVarDeclrStatement) ((ForStatement) statement).getForInit()).getId(), -4 * localEnv.getLastOffset());
                ((LocalEnv) ((ForStatement) statement).getEnv()).incLastOffset();
            }

            if (((ForStatement) statement).getBlock().size() == 1 && ((ForStatement) statement).getBlock().get(0) instanceof HasScope) {
                for (Statement blkStatement : ((HasScope) ((((ForStatement) statement).getStatement().getBlock().get(0)))).getBlock()) {
                    Statement.assignOffset(blkStatement,
                            (LocalEnv) ((HasScope) ((ForStatement) statement).getStatement().getBlock().get(0)).getEnv());
                }
            }

        }
    }

}
