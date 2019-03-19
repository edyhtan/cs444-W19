package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassMember.MethodDeclr;
import Joosc.Environment.ClassEnv;
import Joosc.Environment.Env;
import Joosc.Environment.FieldsVarInfo;
import Joosc.Environment.GlobalEnv;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.TypeSystem.ArrayType;
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
        Tri<Integer, Env, String> nameInfo = resolveAmbiguity(getEnv(), name);
        int smallInfo = nameInfo.get1();

        String fvname = nameInfo.get3();
        Env accessorEnv = nameInfo.get2();
        FieldsVarInfo fieldInfo = accessorEnv.getFieldInfo(fvname);

        if ((smallInfo & isLocal) != 0) {
            fieldInfo = accessorEnv.getVarInfo(fvname);
            joosType = fieldInfo.getTypeInfo().getJoosType();
        } else if ((smallInfo & isStatic) != 0) {
            fieldInfo = accessorEnv.getStaticFieldInfo(fvname);
            if (fieldInfo == null) {
                throw new TypeCheckException(fvname + " is not Static.");
            }
            joosType = fieldInfo.getTypeInfo().getJoosType();
        } else if ((smallInfo & isField) != 0) {
            fieldInfo = accessorEnv.getFieldInfo(fvname);
            joosType = fieldInfo.getTypeInfo().getJoosType();
        } else {
            throw new TypeCheckException("Name " + nameInfo.get3() + " is not a valid accessor");
        }

        // check protected fields access
        if (fieldInfo.getModifiers().contains(Symbol.Protected)) {
            JoosType accessorType = accessorEnv.getJoosType();
            if (!accessorType.isA(getEnv().getJoosType()) && !getEnv().getJoosType().isA(accessorType)) {
                throw new TypeCheckException("Name " + nameInfo.get3() + " is protected and cannot be accessed");
            }

            if (qualified() && !accessorType.equals(getEnv().getJoosType())) {
                if ((smallInfo & isStatic) == 0
                        && !(accessorType.isA(getEnv().getJoosType())) && getEnv().isFieldDeclared(fvname)) {
                    throw new TypeCheckException("Name " + nameInfo.get3() + " is protected and cannot be accessed");
                }

                if (accessorType.isA(getEnv().getJoosType()) && accessorEnv.getDeclaredFieldInfo(fvname) != null) {
                    throw new TypeCheckException("Name " + nameInfo.get3() + " is protected and cannot be accessed");
                }
            }
        }

        if(accessorEnv.getCurrentMethod() instanceof MethodDeclr
                && ((MethodDeclr) getEnv().getCurrentMethod()).getModifiers().contains(Symbol.Static)) {
            if((smallInfo & isLocal) == 0 && accessorEnv.isFieldDeclared(fvname)
                    && !fieldInfo.getModifiers().contains(Symbol.Static)) {
                throw new TypeCheckException("Cannot access non-static field in a static method: " + fvname);
            }
        }

        return joosType;
    }

    private boolean qualified() {
        return name.size() > 1;
    }

    public static int isStatic = 0b1;
    public static int isField = 0b10;
    public static int isLocal = 0b100;
    public static int isMethod = 0b1000;
    public static int isArray = 0b10000;
    public static int isArrayLen = 0b100000;

    public static Tri<Integer, Env, String> resolveAmbiguity(Env env, ArrayList<String> name) throws TypeCheckException {
        return resolveAmbiguity(env, new ArrayList<>(name), false);
    }

    private static Tri<Integer, Env, String> resolveAmbiguity(Env env, ArrayList<String> name, boolean staticOnly)
            throws TypeCheckException {
        if (name.size() > 1) {
            String curName= name.get(0);

            if (staticOnly) {
                JoosType type = env.getStaticFieldInfo(curName).getTypeInfo().getJoosType();
                if (type instanceof ArrayType) {
                    if (name.get(1).equals("length")) {

                    } else {
                        throw new TypeCheckException("unmatched Type : " + curName);
                    }
                }
                ClassEnv nextEnv = type.getClassEnv();
                if (nextEnv == null) {
                    throw new TypeCheckException("Primitive type cannot have field/method access");
                }
                name.remove(0);
                return resolveAmbiguity(nextEnv, name, false);
            } else if (env.isLocalVariableDeclared(curName)) { //is local var
                JoosType type = env.getVarInfo(curName).getTypeInfo().getJoosType();
                if (type instanceof ArrayType) {
                    throw new TypeCheckException("unmatched Type : " + curName);
                }
                ClassEnv nextEnv = type.getClassEnv();
                if (nextEnv == null) {
                    throw new TypeCheckException("Primitive type cannot have field/method access");
                }
                name.remove(0);
                return resolveAmbiguity(nextEnv, name, false);
            } else if (env.isFieldDeclared(curName)) {
                JoosType type = env.getFieldInfo(curName).getTypeInfo().getJoosType();
                ClassEnv nextEnv = type.getClassEnv();
                if (type instanceof ArrayType) {
                    throw new TypeCheckException("unmatched Type : " + curName);
                }
                if (nextEnv == null) {
                    throw new TypeCheckException("Primitive type cannot have field/method access");
                }
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
                            return resolveAmbiguity(nextEnv, name, true);
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

            if (name.size() == 0) {
                throw new TypeCheckException("No Namespace found");
            }

            if (staticOnly) {
                smallInfo = smallInfo | isStatic;
            }

            if (env.isFieldDeclared(name.get(0))) {
                smallInfo = smallInfo | isField;
            }

            if (env.isLocalVariableDeclared(name.get(0))) {
                smallInfo = smallInfo | isLocal;
            }

            if (env.hasMethodSignature(name.get(0))) {
                smallInfo = smallInfo | isMethod;
            }

            return new Tri<>(smallInfo, env, name.get(0));
        }
    }
}
