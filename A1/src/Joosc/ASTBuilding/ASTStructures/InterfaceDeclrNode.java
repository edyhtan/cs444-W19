package Joosc.ASTBuilding.ASTStructures;

import Joosc.ASTBuilding.Constants.RecursionResolve;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class InterfaceDeclrNode extends TypeDeclrNode {
    ArrayList<Symbol> modifiers;
    String identifier;
    ArrayList<ArrayList<String>> extendsInterfaceTypes;
    ArrayList<AbstractMethodDeclr> interfaceBody;

    public InterfaceDeclrNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        modifiers = new ArrayList<>();
        extendsInterfaceTypes = new ArrayList<>();
        interfaceBody = new ArrayList<>();

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
                case ID:
                    identifier = child.getLexeme();
                    break;
                case ExtendsInterfaceType:
                    RecursionResolve.resolveNodes(
                            child,
                            extendsInterfaceTypes,
                            Symbol.ExtendsInterfaceType,
                            Symbol.InterfaceType,
                            node -> {
                                ParseTree nameNode = node.getChild(0, Symbol.ClassOrInterfaceType)
                                                         .getChild(0,Symbol.Name);
                                ArrayList<String> name = new ArrayList<>();
                                RecursionResolve.resolveName(nameNode, name);
                                return name;
                            }
                    );
                case InterfaceBody:
                    if (child.getChild(1).getKind().equals(Symbol.InterfaceMemberDeclr)) {
                        RecursionResolve.resolveNodes(
                                child.getChild(1),
                                interfaceBody,
                                Symbol.InterfaceMemberDeclr,
                                Symbol.AbstractMethodDeclr,
                                node -> new AbstractMethodDeclr(node)
                        );
                    }
                    break;
            }
        }
    }

    public void checkModifiers() throws WeedingFailureException {
        RecursionResolve.assertThrow(modifiers.contains(Symbol.Public) | modifiers.contains(Symbol.Protected));
    }

    @Override
    public void weed() throws WeedingFailureException{
        checkModifiers();
        for (AbstractMethodDeclr node: interfaceBody) {
            node.weed();
        }
    }

    @Override
    public void printInfo(int level) {
        this.printInfoInit("Interface Declr Node:", level);
        this.printInfoSingle("Modifiers:", modifiers);
        this.printInfoSingle("Identifier:", identifier);
        this.printInfoArray("Extend Interface Types:", extendsInterfaceTypes);
        this.printInfoArrayLambda("Interface Body:", interfaceBody,
                node -> node.printInfo(level + 2));
    }

    @Override
    public String getName() {
        return identifier;
    }

    public ArrayList<Symbol> getModifiers() {
        return modifiers;
    }

    public ArrayList<AbstractMethodDeclr> getInterfaceBody() {
        return interfaceBody;
    }

    public ArrayList<ArrayList<String>> getExtendsInterfaceTypes() {
        return extendsInterfaceTypes;
    }
}
