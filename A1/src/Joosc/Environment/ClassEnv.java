package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.Program;
import Joosc.Exceptions.NamingResolveException;

import java.util.ArrayList;

public class ClassEnv implements Env {
    TypeDeclr typeDeclr;
    ProgramEnv parent;

    public ClassEnv(Program program, ProgramEnv parent) {
        typeDeclr = program.getTypeDeclr();
        typeDeclr.addEnv(this);
        this.parent = parent;
    }

    @Override
    public void nameCheck() throws NamingResolveException {

    }
}
