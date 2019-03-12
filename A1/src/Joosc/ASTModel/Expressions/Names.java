package Joosc.ASTModel.Expressions;

import Joosc.Environment.*;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.JoosType;
import Joosc.util.Tri;

import java.util.ArrayList;

public class Names extends ExpressionContent {
    ArrayList<String> name;
    FieldsVarInfo info;

    public Names(ArrayList<String> name) {
        this.name = name;
    }

    public ArrayList<String> getName() {
        return name;
    }

    @Override
    public void validate() throws NamingResolveException {

    }

    @Override
    public JoosType getType() throws TypeCheckException {
        return info.getTypeInfo().getJoosType();
    }

    public static int isStatic = 0b1;
    public static int isField = 0b10;
    public static int isLocal = 0b100;
    public static int isMethod = 0b1000;

    public static Tri<Integer, Env, String> resolveAmbiguity(Env env, ArrayList<String> name) throws TypeCheckException {
        return resolveAmbiguity(env, name, false);
    }

    private static Tri<Integer, Env, String> resolveAmbiguity(Env env, ArrayList<String> name, boolean staticOnly)
            throws TypeCheckException {

        if (name.size() > 1) {
            String curName= name.get(0);
            if (env.isLocalVariableDeclared(curName)) { //is local var
                JoosType type = env.getVarInfo(curName).getTypeInfo().getJoosType();
                ClassEnv nextEnv = type.getClassEnv();
                name.remove(0);
                return resolveAmbiguity(nextEnv, name, false);
            } else if (env.isFieldDeclared(curName)) {
                JoosType type = env.getFieldInfo(curName).getTypeInfo().getJoosType();
                ClassEnv nextEnv = type.getClassEnv();
                name.remove(0);
                return resolveAmbiguity(nextEnv, name, false);
            } else {
                ArrayList<String> prefix = new ArrayList<>();

                while (name.size() != 0) {
                    prefix.add(name.get(0));
                    name.remove(0);
                    if (prefix.size() == 1) {
                        JoosType type = env.findResolvedType(prefix.get(0));
                        if (type != null) {
                            ClassEnv nextEnv = type.getClassEnv();
                            return resolveAmbiguity(nextEnv, prefix, true);
                        }
                    }

                    ClassEnv nextEnv = GlobalEnv.instance.getClassEnv(prefix);
                    if (nextEnv != null) {
                        return resolveAmbiguity(nextEnv, name, true);
                    }
                }

                throw new TypeCheckException("No Namespace found: " +  String.join(".", prefix));
            }
        } else {
            int smallInfo = 0;
            if (staticOnly) {
                smallInfo = smallInfo & isStatic;
            }

            if (env.isFieldDeclared(name.get(0))) {
                smallInfo = smallInfo & isField;
            }

            if (env.isLocalVariableDeclared(name.get(0))) {
                smallInfo = smallInfo & isLocal;
            }

            if (env.hasMethodSignature(name.get(0))) {
                smallInfo = smallInfo & isMethod;
            }

            return new Tri<>(smallInfo, env, name.get(0));
        }
    }

}
