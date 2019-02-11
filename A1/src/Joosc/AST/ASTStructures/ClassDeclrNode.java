package Joosc.AST.ASTStructures;

import Joosc.AST.Constants.RecursionResolve;
import Joosc.AST.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

public class ClassDeclrNode extends TypeDeclrNode {

    private ArrayList<Symbol> classModifiers;
    private String classIdentifier;
    private ArrayList<String> parentClassIdentifier;
    private ArrayList<ArrayList<String>> interfaceTypes;
    private ArrayList<ClassBodyDeclrNode> classBodyDeclrNodes;

    ClassDeclrNode(ParseTree parseTree) throws ASTException {

        this.parseTree = parseTree;
        classModifiers = new ArrayList<>();
        parentClassIdentifier = new ArrayList<>();
        interfaceTypes = new ArrayList<>();
        classBodyDeclrNodes = new ArrayList<>();

        for(ParseTree child : parseTree.getChildren()) {
            switch (child.getKind()) {
                case Modifiers:
                    RecursionResolve.resolveNodes(
                            child,
                            classModifiers,
                            Symbol.Modifiers,
                            Symbol.Modifier,
                            node -> node.getChild(0).getKind()
                    );
                    break;
                case ID:
                    classIdentifier = child.getLexeme();
                    break;
                case ClassBody:
                    ParseTree classBodyDeclrsPT = child.getChild(1, Symbol.ClassBodyDeclrs);
                    RecursionResolve.resolveNodes(
                            classBodyDeclrsPT,
                            classBodyDeclrNodes,
                            Symbol.ClassBodyDeclrs,
                            Symbol.ClassBodyDeclr,
                            ClassBodyDeclrNode::resolveClassBodyDeclrNode
                    );
                    break;
                case Super:
                    RecursionResolve.resolveName
                            (child.getChild(1, Symbol.ClassType)
                                  .getChild(0, Symbol.ClassOrInterfaceType)
                                  .getChild(0, Symbol.Name)
                            ,parentClassIdentifier);
                    break;
                case Interfaces:
                    RecursionResolve.resolveNodes(
                            child.getChild(1, Symbol.InterfaceTypeList),
                            interfaceTypes,
                            Symbol.InterfaceTypeList,
                            Symbol.InterfaceType,
                            node -> {
                                ArrayList<String> interfaceName = new ArrayList<>();
                                RecursionResolve.resolveName(
                                        node.getChild(0, Symbol.ClassOrInterfaceType)
                                            .getChild(0, Symbol.Name),
                                        interfaceName);
                                return interfaceName;
                            }
                    );
                    break;
                case Class:
                    break;
                default:
                    throw new InvalidParseTreeStructureException(parseTree, "Illegal tree node \"" +
                            child.getKind() + "\" found for a ClassDeclrNode");
            }
        }
    }

    public void checkModifiers() throws WeedingFailureException{
        RecursionResolve.assertThrow(classModifiers.contains(Symbol.Public) | classModifiers.contains(Symbol.Protected));
        if (classModifiers.contains(Symbol.Abstract)) {
            RecursionResolve.assertThrow(classModifiers.contains(Symbol.Final));
        }
    }

    @Override
    public void weed() throws WeedingFailureException {
        checkModifiers();
        for (ClassBodyDeclrNode node: classBodyDeclrNodes) {
            node.weed();
        }
    }

    @Override
    public void printInfo(int level) {
        for (int i = 0; i < level; i += 1) {
            System.out.print(TREELEVEL);
        }
        System.out.println(TREEITEM + "Class Declr Node:");
        String prefix = new String(new char[level+1]).replace("\0", TREELEVEL);
        if (classModifiers != null && classModifiers.size() > 0) {
            System.out.println(prefix + TREEITEM + "Modifiers:");
            System.out.println(prefix + TREELEVEL + TREESPACE + classModifiers);
        }
        if (classIdentifier != null) {
            System.out.println(prefix + TREEITEM + "Class Identifier:");
            System.out.println(prefix + TREELEVEL + TREESPACE + classIdentifier);
        }
        if (parentClassIdentifier != null && parentClassIdentifier.size() > 0) {
            System.out.println(prefix + TREEITEM + "Parent Class Identifier:");
            System.out.println(prefix + TREELEVEL + TREESPACE + parentClassIdentifier);
        }
        if (interfaceTypes != null && interfaceTypes.size() > 0) {
            System.out.println(prefix + TREEITEM + "Interface Types:");
            for(ArrayList<String> interfaceName : interfaceTypes) {
                System.out.println(prefix + TREELEVEL + TREESPACE + interfaceName);
            }
        }
        if (classBodyDeclrNodes != null && classBodyDeclrNodes.size() > 0) {
            System.out.println(prefix + TREEITEM + "Class Body Declr Nodes:");
            for(ClassBodyDeclrNode node : classBodyDeclrNodes) {
                node.printInfo(level + 2);
            }
        }
    }

    @Override
    public String getName() {
        return classIdentifier;
    }
}
