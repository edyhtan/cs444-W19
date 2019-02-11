package Joosc.AST.ASTStructures;

import Joosc.AST.Constants.RecursionResolve;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;
import javafx.util.Pair;

import java.util.ArrayList;

public class MethodDeclrNode extends ClassMemberDeclrNode {
    ArrayList<Symbol> modifiers;
    TypeNode type;
    String identifier;
    ArrayList<Pair<TypeNode, String>> formalParamList;
    ArrayList<StatementNode> bodyBlock;

    public MethodDeclrNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        modifiers = new ArrayList<>();
        formalParamList = new ArrayList<>();
        bodyBlock = null;
        ParseTree methodHeader = parseTree.getChild(0, Symbol.MethodHeader);
        ParseTree methodBody = parseTree.getChild(1, Symbol.MethodBody);

        RecursionResolve.resolveNodes(
                methodHeader.getChild(0, Symbol.Modifiers),
                modifiers,
                Symbol.Modifiers,
                Symbol.Modifier,
                node -> node.getChild(0).getKind()
        );

        type = TypeNode.resolveTypeNode(methodHeader.getChild(1));

        ParseTree methodDeclrtor = methodHeader.getChild(2, Symbol.MethodDeclrtor);
        identifier = methodDeclrtor.getChild(0, Symbol.ID).getLexeme();
        if (methodDeclrtor.getChild(2).getKind().equals(Symbol.FormalParamList)) {
            RecursionResolve.resolveNodes(
                    methodDeclrtor.getChild(2),
                    formalParamList,
                    Symbol.FormalParamList,
                    Symbol.FormalParam,
                    node -> new Pair<>(
                            TypeNode.resolveTypeNode(node.getChild(0,Symbol.Type)),
                            node.getChild(1,Symbol.ID).getLexeme()
                    )
            );
        }

        if (methodBody.getChild(0).getKind().equals(Symbol.Block)) {
            bodyBlock = new ArrayList<>();
            ParseTree methodBodyBlockSecondChild = methodBody.getChild(0, Symbol.Block).getChild(1);
            if (methodBodyBlockSecondChild.getKind().equals(Symbol.BlockStatements)) {
                RecursionResolve.resolveNodes(
                        methodBodyBlockSecondChild,
                        bodyBlock,
                        Symbol.BlockStatements,
                        Symbol.BlockStatement,
                        StatementNode::resolveStatementNode
                );
            }
        }

    }

    private void checkModifiers() throws WeedingFailureException {
        RecursionResolve.assertThrow(modifiers.contains(Symbol.Public) | modifiers.contains(Symbol.Protected));
        if (modifiers.contains(Symbol.Abstract)) {
            RecursionResolve.assertThrow(bodyBlock == null);
            RecursionResolve.assertThrow(!modifiers.contains(Symbol.Final));
            RecursionResolve.assertThrow(!modifiers.contains(Symbol.Static));
        }
        RecursionResolve.assertThrow(!(modifiers.contains(Symbol.Final) & modifiers.contains(Symbol.Static)));

        if (modifiers.contains(Symbol.Native)) {
            RecursionResolve.assertThrow(modifiers.contains(Symbol.Static));
            RecursionResolve.assertThrow(bodyBlock == null);
        }
    }

    @Override
    public void weed() throws WeedingFailureException {
        checkModifiers();
        if (bodyBlock != null) {
            for (StatementNode node : bodyBlock) {
                node.weed();
            }
        }
    }

    @Override
    public void printInfo(int level) {
        this.printInfoInit("Method Declr Node:", level);
        this.printInfoSingle("Modifiers:", modifiers);
        type.printInfo(level + 1);
        this.printInfoSingle("Identifier:", identifier);
        this.printInfoArrayLambda("Formal Param List:", formalParamList,
                node -> {
                    this.printInfoStrAtLevel(TREEITEM + "Param Identifier: " + node.getValue(), level + 2);
                    node.getKey().printInfo(level + 3);
                });
        if (bodyBlock != null) {
            this.printInfoArrayLambda("Body Block Statements:", bodyBlock,
                    node -> {
                        node.printInfo(level + 2);
                    });
        }
    }
}
