package Joosc.ASTBuilding.ASTStructures.Statements;

import Joosc.ASTBuilding.ASTStructures.ASTNode;
import Joosc.ASTModel.Statements.Statement;
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
                return new LocalVarDeclrStatementNode(parseTree);
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
                return new IfStatementNode(parseTree);
            case IfThenElseStatement:
                return new IfStatementNode(parseTree);
            case WhileStatement:
                return new WhileStatementNode(parseTree);
            case ForStatement:
                return new ForStatementNode(parseTree);
            case IfThenElseNoShortIf:
                return new IfStatementNode(parseTree);
            case WhileNoShortIf:
                return new WhileStatementNode(parseTree);
            case ForNoShortIf:
                return new ForStatementNode(parseTree);
            default:
                throw new InvalidParseTreeStructureException(parseTree, "Illegal Class Body Declr node.");
        }
    }

    private static StatementNode noTrailingStatements(ParseTree parseTree) throws ASTException {
        switch (parseTree.getKind()) {
            case Block:
                return new BlockNode(parseTree);
            case ExpressionStatement:
                return new ExpressionStatementNode(parseTree);
            case ReturnStatement:
                return new ReturnStatementNode(parseTree);
            case EmptyStatement:
                return PlainStatementNode.Empty;
            default:
                throw new InvalidParseTreeStructureException(parseTree, "Illegal Class Body Declr node.");
        }
    }

    public abstract void weed() throws WeedingFailureException;
    public abstract void printInfo(int level);
}
