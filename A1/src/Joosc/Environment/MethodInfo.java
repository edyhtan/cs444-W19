package Joosc.Environment;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassMember.ConstructorDeclr;
import Joosc.ASTModel.ClassMember.Method;
import Joosc.ASTModel.ClassMember.MethodDeclr;
import Joosc.TypeSystem.JoosType;

import java.util.ArrayList;

public class MethodInfo {
    String signatureStr;
    String methodSimpleName;
    TypeInfo returnType;
    ArrayList<FieldsVarInfo> paramTypeList;
    ArrayList<Symbol> modifiers;
    Method ast;

    public static String buildSignatureStr(String methodSimpleName, ArrayList<JoosType> argList) {
        return argList.stream()
                .map(x -> String.join(".", x.getTypeName()))
                .reduce(methodSimpleName, (s,t) -> s + "," + t);
    }

    public MethodInfo(MethodDeclr method, TypeInfo returnType, ArrayList<FieldsVarInfo> paramTypeList) {
        ast = method;
        modifiers = method.getModifiers();
        this.returnType = returnType;
        this.paramTypeList = paramTypeList;
        this.methodSimpleName = method.getName();
        signatureStr = paramTypeList.stream()
                .map(x->x.getFullTypeName() + (x.isTypeArray()? "[]" : ""))
                .reduce(method.getName(), (s, t) -> s + "," + t);
    }

    public MethodInfo(ConstructorDeclr ctor, ArrayList<FieldsVarInfo> paramTypeList) {
        ast = ctor;
        modifiers = ctor.getModifiers();
        this.returnType = null;
        this.paramTypeList = paramTypeList;
        this.methodSimpleName = ctor.getName();
        signatureStr = paramTypeList.stream()
                .map(x->x.getFullTypeName() + (x.isTypeArray()? "[]" : ""))
                .reduce(ctor.getName(), (s, t) -> s + "," + t);
    }

    public String getSignatureStr() {
        return signatureStr;
    }

    public Method getAst() {
        return ast;
    }

    public String getMethodSimpleName() {
        return methodSimpleName;
    }

    public ArrayList<FieldsVarInfo> getParamTypeList() {
        return paramTypeList;
    }

    public TypeInfo getReturnType() {
        return returnType;
    }
}
