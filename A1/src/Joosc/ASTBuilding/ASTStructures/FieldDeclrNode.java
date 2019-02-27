package Joosc.ASTBuilding.ASTStructures;

import Joosc.ASTBuilding.ASTStructures.Expressions.ExpressionNode;
import Joosc.ASTBuilding.Constants.RecursionResolve;
import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.Exceptions.ASTException;
import Joosc.Exceptions.InvalidParseTreeStructureException;
import Joosc.Exceptions.WeedingFailureException;
import Joosc.Parser.LRGrammar.ParseTree;

import java.util.ArrayList;

import static Joosc.ASTBuilding.Constants.Symbol.*;

public class FieldDeclrNode extends ClassMemberDeclrNode {
    private ArrayList<Symbol> fieldModifiers;
    private TypeNode fieldTypeNode;
    private String fieldIdentifier;
    private ExpressionNode fieldInitExpression;

    public FieldDeclrNode(ParseTree parseTree) throws ASTException {
        this.parseTree = parseTree;
        fieldModifiers = new ArrayList<>();
        fieldInitExpression = null;

        for (ParseTree child : parseTree.getChildren()) {
            switch (child.getKind()) {
                case Modifiers:
                    RecursionResolve.resolveNodes(
                            child,
                            fieldModifiers,
                            Symbol.Modifiers,
                            Symbol.Modifier,
                            node -> node.getChild(0).getKind()
                    );
                    break;
                case Type:
                    fieldTypeNode = TypeNode.resolveTypeNode(child);
                    break;
                case VariableDeclr:
                    for (ParseTree varDeclrChild : child.getChildren()) {
                        switch (varDeclrChild.getKind()) {
                            case ID:
                                fieldIdentifier = varDeclrChild.getLexeme();
                                break;
                            case VariableInit:
                                fieldInitExpression = ExpressionNode.resolveExpressionNode(
                                        varDeclrChild.getChild(0,Expression));
                                break;
                            case Equal:
                                break;
                            default:
                                throw new InvalidParseTreeStructureException(
                                        child, "Illegal node " + varDeclrChild.getKind() +
                                        " found in " + child.getKind() + " node.");
                        }
                    }
                    break;
                default:

            }
        };
    }

    private void checkModifiers() throws WeedingFailureException {
        RecursionResolve.assertThrow(fieldModifiers.contains(Symbol.Public) | fieldModifiers.contains(Symbol.Protected));
        if (fieldModifiers.contains(Symbol.Final)) {
            RecursionResolve.assertThrow(fieldInitExpression != null);
        }
    }

    @Override
    public void weed() throws WeedingFailureException {
        checkModifiers();
        fieldTypeNode.weed();
        if (fieldInitExpression != null) {
            fieldInitExpression.weed();
        }
    }

    @Override
    public void printInfo(int level) {
        for (int i = 0; i < level; i += 1) {
            System.out.print(TREELEVEL);
        }
        System.out.println(TREEITEM + "Field Declr Node:");
        String prefix = new String(new char[level+1]).replace("\0", TREELEVEL);
        if (fieldModifiers != null && fieldModifiers.size() > 0) {
            System.out.println(prefix + TREEITEM + "Field Modifiers:");
            System.out.println(prefix + TREELEVEL + TREESPACE + fieldModifiers);
        }
        if (fieldTypeNode != null) {
            System.out.println(prefix + TREEITEM + "Field Type Node:");
            fieldTypeNode.printInfo(level + 2);
        }
        if (fieldIdentifier != null) {
            System.out.println(prefix + TREEITEM + "Field Identifier:");
            System.out.println(prefix + TREELEVEL + TREESPACE + fieldIdentifier);
        }
        System.out.println(prefix + TREEITEM + "Field Init Expression:");
        if (fieldInitExpression == null) {
            System.out.println(prefix + TREELEVEL + TREESPACE + "null");
        } else {
            fieldInitExpression.printInfo(level + 2);
        }
    }

    public ArrayList<Symbol> getModifiers() {
        return fieldModifiers;
    }

    public ExpressionNode getnitExpression() {
        return fieldInitExpression;
    }

    public String getName() {
        return fieldIdentifier;
    }

    public TypeNode getType() {
        return fieldTypeNode;
    }
}
