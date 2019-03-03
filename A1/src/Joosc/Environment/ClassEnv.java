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
    ProgramEnv parent;

    protected HashSet<String> fields = new HashSet<>();

    public ClassEnv(Program program, ProgramEnv parent) {
        typeDeclr = program.getTypeDeclr();
        typeDeclr.addEnv(this);
        this.parent = parent;

        if (duplicatedFieldName()) {
            System.err.println("DUPLICATED FIELDS");
        }
    }

    // return true if there is a duplicated
    private boolean duplicatedFieldName() {
        ArrayList<FieldDeclr> fieldDeclrs = ((ClassDeclr) typeDeclr).getFields();
        for (FieldDeclr fieldDeclr: fieldDeclrs) {
            if (!fields.contains(fieldDeclr.getName())) {
                fields.add(fieldDeclr.getName());
            } else {
                return true;
            }
        }
        return false;
    }

    @Override
    public void nameCheck() throws NamingResolveException {

    }
}
