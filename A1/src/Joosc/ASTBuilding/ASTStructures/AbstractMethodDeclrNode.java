package Joosc.ASTBuilding.ASTStructures;

import Joosc.ASTBuilding.Constants.RecursionResolve;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;
import javafx.util.Pair;

import java.util.ArrayList;

public class AbstractMethodDeclrNode extends ASTNode {

    ArrayList<Symbol> modifiers;
    TypeNode type;
    String identifier;
    ArrayList<Pair<TypeNode, String>> formalParamList;

    public AbstractMethodDeclrNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        modifiers = new ArrayList<>();
        formalParamList = new ArrayList<>();
        ParseTree methodHeader = parseTree.getChild(0, Symbol.MethodHeader);

        RecursionResolve.resolveNodes(
                methodHeader.getChild(0, Symbol.Modifiers),
                modifiers,
                Symbol.Modifiers,
                Symbol.Modifier,
                node -> node.getChild(0).getKind()
        );

        type = new TypeNode(methodHeader.getChild(1));

        ParseTree methodDeclrtor = methodHeader.getChild(2, Symbol.MethodDeclrtor);
        identifier = methodDeclrtor.getChild(0, Symbol.ID).getLexeme();
        if (methodDeclrtor.getChild(2).getKind().equals(Symbol.FormalParamList)) {
            RecursionResolve.resolveNodes(
                    methodDeclrtor.getChild(2),
                    formalParamList,
                    Symbol.FormalParamList,
                    Symbol.FormalParam,
                    node -> new Pair<>(
                            new TypeNode(node.getChild(0,Symbol.Type)),
                            node.getChild(1,Symbol.ID).getLexeme()
                    )
            );
        }
    }

    private void checkModifiers() throws WeedingFailureException {
        RecursionResolve.assertThrow(!modifiers.contains(Symbol.Static));
        RecursionResolve.assertThrow(!modifiers.contains(Symbol.Final));
    }


    @Override
    public void weed() throws WeedingFailureException {
        checkModifiers();
    }

    @Override
    public void printInfo(int level) {
        this.printInfoInit("Abstract Method Declr Node:", level);
        this.printInfoSingle("Modifiers:", modifiers);
        type.printInfo(level + 1);
        this.printInfoSingle("Identifier:", identifier);
        this.printInfoArrayLambda("Formal Param List:", formalParamList,
                node -> {
                    this.printInfoStrAtLevel(TREEITEM + "Param Identifier: " + node.getValue(), level + 2);
                    node.getKey().printInfo(level + 3);
                });
    }

    public ArrayList<Symbol> getModifiers() {
        return modifiers;
    }

    public ArrayList<Pair<TypeNode, String>> getFormalParamList() {
        return formalParamList;
    }

    public String getName() {
        return identifier;
    }

    public TypeNode getType() {
        return type;
    }
}
