package Joosc.Environment;

import Joosc.ASTModel.ClassInterface.TypeDeclr;
import Joosc.ASTModel.Program;
import Joosc.Exceptions.NamingResolveException;

public class ClassEnv implements Env {
    TypeDeclr typeDeclr;
    ProgramEnv parent;

    public ClassEnv(TypeDeclr program, ProgramEnv parent) {
        typeDeclr = program;
        program.addEnv(this);
        this.parent = parent;
    }

    @Override
    public void nameCheck() throws NamingResolveException {

    }
}
