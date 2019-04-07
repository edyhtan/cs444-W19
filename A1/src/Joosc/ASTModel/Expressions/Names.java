package Joosc.ASTModel.Expressions;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.AsmWriter.AsmWriter;
import Joosc.AsmWriter.Register;
import Joosc.Environment.*;
import Joosc.Exceptions.NamingResolveException;
import Joosc.Exceptions.TypeCheckException;
import Joosc.Exceptions.UnreachableStatementException;
import Joosc.TypeSystem.ArrayType;
import Joosc.TypeSystem.JoosType;
import Joosc.util.Tri;

import java.util.ArrayList;
import java.util.HashSet;

public class Names extends ExpressionContent implements HasAddress, LeftValue {
    ArrayList<String> name;
    FieldsVarInfo info;
    boolean staticPrefix = false;

    public Names(ArrayList<String> name) {
        this.name = name;
    }

    public ArrayList<String> getName() {
        return name;
    }

    @Override
    public void localVarSelfReference(String id) throws UnreachableStatementException {
        if (!staticPrefix && name.get(0).equals(id)) {
            throw new UnreachableStatementException("Initializing name with itself: " + id);
        }
    }

    @Override
    public Env validate() throws NamingResolveException {
        return null;
    }

    @Override
    public JoosType getType() throws TypeCheckException {
        boolean isDefaultPkg = false;
        if (getEnv().getCurrentClass().getClassEnv().getPackageDeclr() == null) {
            isDefaultPkg = true;
        }
        Tri<Integer, Env, String> nameInfo = resolveAmbiguity(getEnv(), name, isDefaultPkg);
        int smallInfo = nameInfo.get1();

        String fvname = nameInfo.get3();
        Env accessorEnv = nameInfo.get2();
        FieldsVarInfo fieldInfo;

        if ((smallInfo & isLocal) != 0) {
            fieldInfo = accessorEnv.getVarInfo(fvname);
            joosType = fieldInfo.getTypeInfo().getJoosType();
        } else if ((smallInfo & isStatic) != 0) {
            fieldInfo = accessorEnv.getStaticFieldInfo(fvname);
            staticPrefix = true;

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

        // final fields
        if ((smallInfo & isFinalFields) != 0) {
            isFinal = true;
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

        // check static field access
        if (fieldInfo.getModifiers().contains(Symbol.Static)) {
            if (name.size() > 1) {
                ArrayList<String> accessor = new ArrayList<>(name);
                accessor.remove(accessor.size() - 1);
                for (int i = accessor.size() - 1; i >= 0; --i) {
                    if (getEnv().isLocalVariableDeclared(accessor.get(i))) {
                        throw new TypeCheckException("Static field cannot be accessed from instance: " + fvname);
                    }
                }
            }
        }

        if (this.parentIsStatic) {
            // name resolves to a non-static field
            if ((smallInfo & isLocal) == 0 && (smallInfo & isField) != 0
                    && !fieldInfo.getModifiers().contains(Symbol.Static)) {
                if (name.size() > 1) { // qualified
                    ArrayList<String> accessor = new ArrayList<>(name);
                    accessor.remove(accessor.size() - 1);

                    // check if accessor is an instance
                    int i;
                    for (i = accessor.size() - 1; i >= 0; --i) {
                        if (getEnv().isLocalVariableDeclared(accessor.get(i))) {
                            break;
                        }
                    }
                    if (i < 0) {
                        throw new TypeCheckException("Static field cannot access non-static fields: " + name);
                    }
                } else { // simple name
                    throw new TypeCheckException("Static field cannot access non-static fields: " + name);
                }
            }
        }

        return joosType;
    }

    @Override
    public void forwardDeclaration(String fieldname, HashSet<String> declared) throws TypeCheckException {
        if (!isLHS && !staticPrefix && (name.get(0).equals(fieldname) || !declared.contains(name.get(0)))) {
            throw new TypeCheckException(name.get(0) + " is has not initialized or not declared.");
        }
    }


    private boolean qualified() {
        return name.size() > 1;
    }

    public static int isStatic = 0b1;
    public static int isField = 0b10;
    public static int isLocal = 0b100;
    public static int isMethod = 0b1000;
    public static int isFinalFields = 0b10000;

    public static Tri<Integer, Env, String> resolveAmbiguity(Env env, ArrayList<String> name, boolean isDefaultPkg) throws TypeCheckException {
        return resolveAmbiguity(env, new ArrayList<>(name), false, false, isDefaultPkg);
    }

    private static Tri<Integer, Env, String> resolveAmbiguity(Env env, ArrayList<String> name, boolean staticOnly, boolean isArray, boolean isDefaultPkg)
            throws TypeCheckException {

        if (name.size() > 1) {
            String curName = name.get(0);

            if (staticOnly) {
                FieldsVarInfo staticField = env.getStaticFieldInfo(curName);
                if (staticField == null) {
                    throw new TypeCheckException("static field not found: " + curName);
                }
                JoosType type = staticField.getTypeInfo().getJoosType();
                if (type instanceof ArrayType) {
                    isArray = true;
                }
                ClassEnv nextEnv = type.getClassEnv();
                if (nextEnv == null) {
                    throw new TypeCheckException("Primitive type cannot have field/method access");
                }
                name.remove(0);
                return resolveAmbiguity(nextEnv, name, false, isArray, isDefaultPkg);
            } else if (env.isLocalVariableDeclared(curName)) { //is local var
                JoosType type = env.getVarInfo(curName).getTypeInfo().getJoosType();
                if (type instanceof ArrayType) {
                    isArray = true;
                }
                ClassEnv nextEnv = type.getClassEnv();
                if (nextEnv == null) {
                    throw new TypeCheckException("Primitive type cannot have field/method access");
                }
                name.remove(0);
                return resolveAmbiguity(nextEnv, name, false, isArray, isDefaultPkg);
            } else if (env.isFieldDeclared(curName)) {
                JoosType type = env.getFieldInfo(curName).getTypeInfo().getJoosType();
                if (type instanceof ArrayType) {
                    isArray = true;
                }
                ClassEnv nextEnv = type.getClassEnv();
                name.remove(0);
                if (nextEnv == null) {
                    throw new TypeCheckException("Primitive type cannot have field/method access");
                }
                return resolveAmbiguity(nextEnv, name, false, isArray, isDefaultPkg);
            } else {
                ArrayList<String> prefix = new ArrayList<>();

                while (name.size() != 0) {
                    prefix.add(name.get(0));
                    name.remove(0);

                    if (prefix.size() == 1) {
                        JoosType type;

                        try {
                            type = env.typeResolve(prefix);
                        } catch (NamingResolveException e) {
                            type = null;
                        }

                        if (type != null) {
                            ClassEnv nextEnv = type.getClassEnv();
                            return resolveAmbiguity(nextEnv, name, true, isArray, isDefaultPkg);
                        }
                    }

                    ClassEnv nextEnv = GlobalEnv.instance.getClassEnv(prefix, isDefaultPkg);

                    if (nextEnv != null) {
                        return resolveAmbiguity(nextEnv, name, true, isArray, isDefaultPkg);
                    }
                }

                throw new TypeCheckException("No Namespace found: " + String.join(".", prefix));
            }
        } else {
            int smallInfo = 0;

            if (name.size() == 0) {
                throw new TypeCheckException("No Namespace found");
            }

            if (name.get(0).equals("length") && isArray) {
                smallInfo = smallInfo | isFinalFields;
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

    @Override
    public boolean isConstantExpression() {
        return false;
    }

    //Code Gen
    AsmWriter asmWriter;

    @Override
    public void codeGen(int indent) {
        codeGenName(new ArrayList<>(name), getEnv(),false, false, false, indent);
    }

    public Env codeGenWithEnv(int indent) {
        return codeGenName(new ArrayList<>(name), getEnv(),false, false, false, indent);
    }

    private Env codeGenName(ArrayList<String> name, Env env, boolean hasPrefix, boolean isAddress, boolean isStatic,  int indent) {
        String curname = name.get(0);
        name.remove(0);
        JoosType type = env.getJoosType();
        FieldsVarInfo localVar = (env instanceof LocalEnv) ? ((LocalEnv) env).getSymbolTable().getOffSet(curname) : null;
        int localVarPtr = (localVar != null) ? localVar.getOffset() : 0;

        // Used for next instance call
        Env nextEnv = null;

        if (isStatic) {
            FieldsVarInfo info = env.getStaticFieldInfo(curname);

            String labelName = info.fieldsDeclr.getStaticFieldLabel();

            asmWriter.extern(labelName);
            asmWriter.indent(indent);
            asmWriter.mov(Register.eax, labelName);

            nextEnv = info.getTypeInfo().getJoosType().getClassEnv();
            isStatic = false;
        } else if (!hasPrefix && localVarPtr != 0) {
            asmWriter.indent(indent);
            asmWriter.comment("Local Var " + curname);
            asmWriter.indent(indent);
            asmWriter.mov(Register.eax, Register.ebp);
            asmWriter.indent(indent);
            if (localVarPtr > 0) {
                asmWriter.add(Register.eax, localVarPtr);
            } else {
                asmWriter.sub(Register.eax, Math.abs(localVarPtr));
            }
            nextEnv = localVar.getTypeInfo().getJoosType().getClassEnv();
        } else if (env.getClassEnv().symbolTable.containsKey(type.getQualifiedName()+"::"+curname)) {
            if (!hasPrefix) {
                int implicitReference = ((LocalEnv) env).getThis();
                asmWriter.indent(indent);
                asmWriter.comment("Implicit This");
                asmWriter.indent(indent);
                asmWriter.movFromAddr(Register.eax, "ebp + " + implicitReference);
            } else {
                asmWriter.nullCheck(indent);
            }

            asmWriter.indent(indent);
            asmWriter.comment("Field " + curname);

            FieldsVarInfo info = env.getClassEnv().symbolTable.get(type.getQualifiedName()+"::"+curname);
            int offset = info.getOffset();

            asmWriter.indent(indent);
            if (offset > 0) {
                asmWriter.add(Register.eax, offset);
            } else {
                asmWriter.sub(Register.eax, Math.abs(offset));
            }

            nextEnv = info.getTypeInfo().getJoosType().getClassEnv();
        } else {
            // Possible Static Prefix
            JoosType resolvedType = env.findResolvedType(curname);
            if (resolvedType != null) {
                nextEnv = resolvedType.getClassEnv();
            } else {
                ArrayList<String> prefix = new ArrayList<>();
                prefix.add(curname);
                ClassEnv fullTypeEnv;

                do {
                    fullTypeEnv = GlobalEnv.instance.getClassEnv(prefix, getEnv().getCurrentClass().getClassEnv().getPackageDeclr() == null);

                    if (fullTypeEnv != null)
                        break;

                    prefix.add(name.get(0));
                    name.remove(0);

                } while (name.size() >= 0);

                nextEnv = fullTypeEnv;
            }
            isStatic = true;
        }

        if ((!isAddress || name.size() > 0) && !isStatic) {
            asmWriter.indent(indent);
            asmWriter.movFromAddr(Register.eax, Register.eax);
        }

        asmWriter.println("");

        if (name.size() != 0) {
            return codeGenName(name, nextEnv, true, isAddress, isStatic, indent);
        }

        return nextEnv;
    }

    @Override
    public void getCodeAddr(int indent) {
        codeGenName(new ArrayList<>(name), getEnv(), false, true, false, indent);
    }

    @Override
    public void addWriter(AsmWriter writer) {
        asmWriter = writer;
    }
}
