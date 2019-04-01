package Joosc.ASTModel.ClassMember;

import Joosc.ASTBuilding.ASTStructures.ClassMemberDeclrNode;
import Joosc.ASTBuilding.ASTStructures.FieldDeclrNode;
import Joosc.ASTBuilding.ASTStructures.MethodDeclrNode;

public interface ClassMemberDeclr extends ClassBodyDeclr {

    static ClassBodyDeclr convertClassMemeberDeclrNode(ClassMemberDeclrNode node) {
        if (node instanceof FieldDeclrNode) {
            return new FieldDeclr((FieldDeclrNode) node);
        }

        if (node instanceof MethodDeclrNode) {
            return new MethodDeclr((MethodDeclrNode) node);
        }
        return null;
    }
}
