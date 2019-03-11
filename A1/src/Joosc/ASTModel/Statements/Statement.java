package Joosc.ASTModel.Statements;

import Joosc.ASTBuilding.ASTStructures.Statements.*;
import Joosc.ASTModel.AST;
import Joosc.Exceptions.TypeCheckException;

public interface Statement extends AST {

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

}
