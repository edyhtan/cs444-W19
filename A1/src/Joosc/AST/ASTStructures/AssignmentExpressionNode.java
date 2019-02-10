package Joosc.AST.ASTStructures;

import Joosc.Parser.LRGrammar.ParseTree;

public class AssignmentExpressionNode extends ExpressionNode {

    public AssignmentExpressionNode(ParseTree parseTree) {
        this.parseTree = parseTree;
    }

    @Override
    public void weed() {

    }

    @Override
    public void printInfo(int level) {
        for (int i = 0; i < level; i += 1) {
            System.out.print(TREELEVEL);
        }
        System.out.println(TREEITEM + "Assignment Expression Node:");
        String prefix = new String(new char[level+1]).replace("\0", TREELEVEL);
    }
}
