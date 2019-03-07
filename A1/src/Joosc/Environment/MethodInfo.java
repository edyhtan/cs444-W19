package Joosc.Environment;

import Joosc.ASTBuilding.Constants.Symbol;
import Joosc.ASTModel.ClassMember.ConstructorDeclr;
import Joosc.ASTModel.ClassMember.Method;
import Joosc.ASTModel.ClassMember.MethodDeclr;

import java.util.ArrayList;

public class MethodInfo {
    String signatureStr;
    FieldsVarInfo returnType;
    ArrayList<FieldsVarInfo> paramTypeList;
    ArrayList<Symbol> modifiers;
    Method ast;

    public MethodInfo(MethodDeclr method, FieldsVarInfo returnType, ArrayList<FieldsVarInfo> paramTypeList) {
        ast = method;
        modifiers = method.getModifiers();
        this.returnType = returnType;
        this.paramTypeList = paramTypeList;
        signatureStr = paramTypeList.stream()
                .map(FieldsVarInfo::getFullTypeName)
                .reduce(method.getName(), (s, t) -> s + "," + t);
    }

    public MethodInfo(ConstructorDeclr ctor, FieldsVarInfo classType, ArrayList<FieldsVarInfo> paramTypeList) {
        ast = ctor;
        modifiers = ctor.getModifiers();
        this.returnType = classType;
        this.paramTypeList = paramTypeList;
        signatureStr = paramTypeList.stream()
                .map(FieldsVarInfo::getFullTypeName)
                .reduce(ctor.getName(), (s, t) -> s + "," + t);
    }

    public String getSignatureStr() {
        return signatureStr;
    }

    public Method getAst() {
        return ast;
    }
}
