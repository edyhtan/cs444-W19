package Joosc.AST.ASTStructures;

import Joosc.AST.Constants.RecursionResolve;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class InterfaceDeclrNode extends TypeDeclrNode {
    ArrayList<Symbol> modifiers;
    String identifier;
    ArrayList<ArrayList<String>> extendsInterfaceTypes;
    ArrayList<Object> interfaceBody;

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

                    break;
            }
        }
    }

    @Override
    public void weed(){ }

    @Override
    public void printInfo(int level) {}

    @Override
    public String getName() {
        return identifier;
    }
}
