package Joosc.Environment;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassMember.ConstructorDeclr;
import Joosc.ASTModel.ClassMember.Method;
import Joosc.ASTModel.ClassMember.MethodDeclr;

import java.util.ArrayList;

public class MethodInfo {
    String signatureStr;
    TypeInfo returnType;
    ArrayList<FieldsVarInfo> paramTypeList;
    ArrayList<Symbol> modifiers;
    Method ast;

    public MethodInfo(MethodDeclr method, TypeInfo returnType, ArrayList<FieldsVarInfo> paramTypeList) {
        ast = method;
        modifiers = method.getModifiers();
        this.returnType = returnType;
        this.paramTypeList = paramTypeList;
        signatureStr = paramTypeList.stream()
                .map(x->x.getFullTypeName() + (x.isTypeArray()? "[]" : ""))
                .reduce(method.getName(), (s, t) -> s + "," + t);
    }

    public MethodInfo(ConstructorDeclr ctor, ArrayList<FieldsVarInfo> paramTypeList) {
        ast = ctor;
        modifiers = ctor.getModifiers();
        this.returnType = null;
        this.paramTypeList = paramTypeList;
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
}
