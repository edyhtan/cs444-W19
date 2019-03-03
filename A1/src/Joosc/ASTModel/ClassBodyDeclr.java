package Joosc.ASTModel;

import Joosc.ASTBuilding.ASTStructures.ClassBodyDeclrNode;
import Joosc.ASTBuilding.ASTStructures.ClassMemberDeclrNode;
import Joosc.ASTBuilding.ASTStructures.ConstructorDeclrNode;

import java.util.ArrayList;

public interface ClassBodyDeclr extends AST {
    static ClassBodyDeclr convertClassBodyDeclrNode(ClassBodyDeclrNode node){
        if(node instanceof ConstructorDeclrNode) {
            return new ConstructorDeclr((ConstructorDeclrNode) node);
        }

        if(node instanceof ClassMemberDeclrNode) {
            return ClassMemberDeclr.convertClassMemeberDeclrNode((ClassMemberDeclrNode) node);
        }

        return null;
    }

    void buildCanonicalName(ArrayList<String> className);
}
