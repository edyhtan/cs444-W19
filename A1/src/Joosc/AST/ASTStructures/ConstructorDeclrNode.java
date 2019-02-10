package Joosc.AST.ASTStructures;

import Joosc.AST.Constants.RecursionResolve;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;
import javafx.util.Pair;

import java.util.ArrayList;

public class ConstructorDeclrNode extends ClassBodyDeclrNode {
    private ArrayList<Symbol> constructorModifiers;
    private String constructorIdentifier;
    private ArrayList<Pair<TypeNode, String>> formalParamList;
    private ArrayList<StatementNode> constructorBodyStatements;

    protected ConstructorDeclrNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        constructorModifiers = new ArrayList<>();
        formalParamList = new ArrayList<>();
        constructorBodyStatements = new ArrayList<>();

        for(ParseTree child : parseTree.getChildren()) {
            switch (child.getKind()) {
                case Modifiers:
                    RecursionResolve.resolveNodes(
                            child,
                            constructorModifiers,
                            Symbol.Modifiers,
                            Symbol.Modifier,
                            node -> node.getChild(0).getKind()
                    );
                    break;
                case SimpleName:
                    constructorIdentifier = child.getChild(0, Symbol.ID).getLexeme();
                    break;
                case FormalParamList:
                    RecursionResolve.resolveNodes(
                            child,
                            formalParamList,
                            Symbol.FormalParamList,
                            Symbol.FormalParam,
                            node -> new Pair<TypeNode, String>(
                                    TypeNode.resolveTypeNode(node.getChild(0, Symbol.Type)),
                                    node.getChild(1,Symbol.ID).getLexeme())
                    );
                    break;
                case ConstructorBody:
                    // ConstructorBody -> { BlockStatements } or { }
                    if (child.getChild(1).getKind().equals(Symbol.BlockStatements)) {
                        RecursionResolve.resolveNodes(
                                child.getChild(1),
                                constructorBodyStatements,
                                Symbol.BlockStatements,
                                Symbol.BlockStatement,
                                node -> StatementNode.resolveStatementNode(node.getChild(0))
                        );
                    }
                    break;
                case LeftParen:
                case RightParen:
                    break;
                default:
                    break;
            }
        }
    }

    @Override
    public void weed() {

    }

    @Override
    public void printInfo(int level) {
        this.printInfoInit("Constructor Declr Node:", level);
        this.printInfoSingle("Modifiers:", constructorModifiers);
        this.printInfoSingle("Identifier:", constructorIdentifier);
        this.printInfoArrayLambda("Formal Param List:", formalParamList,
                node -> {
                    this.printInfoStrAtLevel(TREEITEM + "Param Identifier: " + node.getValue(), level + 2);
                    node.getKey().printInfo(level + 3);
                });
        this.printInfoArrayLambda("Body Statements:", constructorBodyStatements,
                node -> node.printInfo(level + 2));
    }
}
