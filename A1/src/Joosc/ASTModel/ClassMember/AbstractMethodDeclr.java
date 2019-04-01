/**
 * Keeping this here as a backup. Remove this after new MethodDeclr is stable.
 * */

//package Joosc.ASTModel.ClassMember;
//
//import Joosc.ASTBuilding.ASTStructures.AbstractMethodDeclrNode;
//import Joosc.ASTBuilding.Constants.Symbol;
//import Joosc.ASTModel.AST;
//import Joosc.ASTModel.Statements.Statement;
//import Joosc.ASTModel.Type;
//import Joosc.util.Pair;
//
//import java.util.ArrayList;
//import java.util.stream.Collectors;
//
//public class AbstractMethodDeclr implements ClassBodyDeclr {
//    private ArrayList<Symbol> modifiers;
//    private Type type;
//    private String name;
//    private ArrayList<Pair<Type, String>> formalParamList;
//    private ArrayList<String> canonicalID;
//
//    public AbstractMethodDeclr(AbstractMethodDeclrNode node) {
//        modifiers = node.getModifiers();
//        type = new Type(node.checkType());
//        name = node.getName();
//        formalParamList = node.getFormalParamList().stream()
//                .map(pair -> new Pair<>(new Type(pair.getKey()), pair.getValue()))
//                .collect(Collectors.toCollection(ArrayList::new));
//    }
//
//    public void buildCanonicalName(ArrayList<String> className) {
//      // TODO
//    }
//
//    public Type checkType() {
//        return type;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public ArrayList<Pair<Type, String>> getFormalParamList() {
//        return formalParamList;
//    }
//
//    public ArrayList<Symbol> getModifiers() {
//        return modifiers;
//    }
//
//    public ArrayList<String> getCanonicalID() {
//        return canonicalID;
//    }
//
//    @Override
//    public ArrayList<Statement> getBodyBlock(){
//        return null;
//    }
//}
