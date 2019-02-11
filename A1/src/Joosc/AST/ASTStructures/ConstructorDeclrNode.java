package Joosc.AST.ASTStructures;

import Joosc.AST.Constants.RecursionResolve;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;
import javafx.util.Pair;

import java.util.ArrayList;

public class ConstructorDeclrNode extends ClassBodyDeclrNode {
    private ArrayList<Symbol> modifiers;
    private String identifier;
    private ArrayList<Pair<TypeNode, String>> formalParamList;
    private ArrayList<StatementNode> bodyBlock;

    protected ConstructorDeclrNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        modifiers = new ArrayList<>();
        formalParamList = new ArrayList<>();
        bodyBlock = new ArrayList<>();

        for(ParseTree child : parseTree.getChildren()) {
            switch (child.getKind()) {
                case Modifiers:
                    RecursionResolve.resolveNodes(
                            child,
                            modifiers,
                            Symbol.Modifiers,
                            Symbol.Modifier,
                            node -> node.getChild(0).getKind()
                    );
                    break;
                case SimpleName:
                    identifier = child.getChild(0, Symbol.ID).getLexeme();
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
                                bodyBlock,
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

    public void checkModifiers() throws WeedingFailureException {
        RecursionResolve.assertThrow(modifiers.contains(Symbol.Public) | modifiers.contains(Symbol.Protected));
    }

    @Override
    public void weed() throws WeedingFailureException {
        checkModifiers();
        for (StatementNode node: bodyBlock) {
            node.weed();
        }
    }

    @Override
    public void printInfo(int level) {
        this.printInfoInit("Constructor Declr Node:", level);
        this.printInfoSingle("Modifiers:", modifiers);
        this.printInfoSingle("Identifier:", identifier);
        this.printInfoArrayLambda("Formal Param List:", formalParamList,
                node -> {
                    this.printInfoStrAtLevel(TREEITEM + "Param Identifier: " + node.getValue(), level + 2);
                    node.getKey().printInfo(level + 3);
                });
        this.printInfoArrayLambda("Body Statements:", bodyBlock,
                node -> node.printInfo(level + 2));
    }
}
