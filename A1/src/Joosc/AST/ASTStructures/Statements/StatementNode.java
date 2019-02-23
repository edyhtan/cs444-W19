package Joosc.AST.ASTStructures.Statements;

import Joosc.AST.ASTStructures.ASTNode;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

public abstract class StatementNode extends ASTNode {

    public static StatementNode resolveStatementNode(ParseTree parseTree) throws ASTException{
        switch (parseTree.getKind()) {
            case Block:
            case BlockStatement:
                return resolveStatementNode(parseTree.getChild(0));
            case LocalVarDeclrStatement:
                return new LocalVarDeclrStatement(parseTree);
            case Statement:
                return getStatement(parseTree.getChild(0));
            case StatementNoShortIf:
                return getStatement(parseTree.getChild(0));
            default:
                throw new InvalidParseTreeStructureException(parseTree,
                        "Illegal Class Body Declr node.");
        }
    }

    private static StatementNode getStatement(ParseTree parseTree) throws ASTException {
        switch (parseTree.getKind()) {
            case StatementNoTrailingSub:
                return noTrailingStatements(parseTree.getChildren().get(0));
            case IfThenStatement:
                return new IfStatement(parseTree);
            case IfThenElseStatement:
                return new IfStatement(parseTree);
            case WhileStatement:
                return new WhileStatement(parseTree);
            case ForStatement:
                return new ForStatement(parseTree);
            case IfThenElseNoShortIf:
                return new IfStatement(parseTree);
            case WhileNoShortIf:
                return new WhileStatement(parseTree);
            case ForNoShortIf:
                return new ForStatement(parseTree);
            default:
                throw new InvalidParseTreeStructureException(parseTree, "Illegal Class Body Declr node.");
        }
    }

    private static StatementNode noTrailingStatements(ParseTree parseTree) throws ASTException {
        switch (parseTree.getKind()) {
            case Block:
                return new Block(parseTree);
            case ExpressionStatement:
                return new ExpressionStatement(parseTree);
            case ReturnStatement:
                return new ReturnStatement(parseTree);
            case EmptyStatement:
                return PlainStatement.Empty;
            default:
                throw new InvalidParseTreeStructureException(parseTree, "Illegal Class Body Declr node.");
        }
    }

    public abstract  void weed() throws WeedingFailureException;
    public abstract void printInfo(int level);
}
