package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.ClassDeclr;
import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.FieldDeclr;
import Joosc.ASTModel.Program;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;
import java.util.HashSet;


public class ClassEnv implements Env {
    TypeDeclr typeDeclr;
    GlobalEnv parent;

    protected HashSet<String> fields = new HashSet<>();

    public ClassEnv(Program program, GlobalEnv parent) {
        typeDeclr = program.getTypeDeclr();
        typeDeclr.addEnv(this);
        this.parent = parent;
    }

    // return true if there is a duplicated
    private boolean duplicatedFieldName() throws NamingResolveException{
        if (typeDeclr instanceof ClassDeclr) {
            ArrayList<FieldDeclr> fieldDeclrs = ((ClassDeclr) typeDeclr).getFields();
            for (FieldDeclr fieldDeclr : fieldDeclrs) {
                if (!fields.contains(fieldDeclr.getName())) {
                    fields.add(fieldDeclr.getName());
                } else {
                    throw new NamingResolveException();
                }
            }
        }
        return false;
    }

    @Override
    public void resolveName() throws NamingResolveException {
        duplicatedFieldName();
    }
}
