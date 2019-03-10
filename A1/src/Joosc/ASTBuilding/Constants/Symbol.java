package Joosc.ASTBuilding.Constants;

import java.util.Arrays;
import java.util.HashMap;

public enum Symbol {

    //Terminals
    BOF("BOF"),
    EOF("EOF"),
    Import("import"),
    Package("package"),
    Dot("."),
    Star("*"),
    Semicolon(";"),
    ID("id"),
    Class("class"),
    Extends("extends"),
    Interface("interface"),
    Comma(","),
    LeftBrace("{"),
    RightBrace("}"),
    Equal("="),
    Void("void"),
    Throws("throws"),
    This("this"),
    Implements("implements"),
    LeftSquare("["),
    RightSquare("]"),
    Boolean("boolean"),
    Byte("byte"),
    Short("short"),
    Int("int"),
    Char("char"),
    LeftParen("("),
    RightParen(")"),
    Public("public"),
    Protected("protected"),
    Static("static"),
    Final("final"),
    Native("native"),
    IntLiteral("intLiteral"),
    CharLiteral("charLiteral"),
    StringLiteral("string"),
    Null("null"),
    True("true"),
    False("false"),
    New("new"),
    Plus("+"),
    Minus("-"),
    Bang("!"),
    Slash("/"),
    Percent("%"),
    GT(">"),
    LT("<"),
    GE(">="),
    LE("<="),
    EQ("=="),
    NE("!="),
    Instanceof("instanceof"),
    Amp("&"),
    Cap("^"),
    Bar("|"),
    And("&&"),
    Or("||"),
    While("while"),
    For("for"),
    If("if"),
    Else("else"),
    Break("break"),
    Continue("continue"),
    Return("return"),
    Abstract("abstract"),

    // Non-terminals
    SPrime,
    S,
    PackageDeclr,
    ImportDeclr,
    TypeDeclr,
    ImportDeclrs,
    SingleTypeImportDeclr,
    TypeImportOnDemand,
    ClassDeclr,
    Name,
    SimpleName,
    QualifiedName,
    Modifiers,
    Modifier,
    Super,
    Interfaces,
    InterfaceTypeList,
    ClassBody,
    ClassBodyDeclrs,
    ClassBodyDeclr,
    ClassMemberDeclr,
    ConstructorDeclr,
    MethodDeclr,
    FieldDeclr,
    Type,
    VariableDeclr,
    VariableInit,
    MethodHeader,
    MethodBody,
    MethodDeclrtor,
    FormalParamList,
    FormalParam,
    ClassTypeList,
    Block,
    ArgList,
    ConstructorBody,
    ExplicitCtorInvoke,
    BlockStatements,
    PrimitiveType,
    NumericType,
    ReferenceType,
    ClassOrInterfaceType,
    ClassType,
    InterfaceType,
    ArrayType,
    InterfaceDeclr,
    ExtendsInterfaceType,
    InterfaceBody,
    InterfaceMemberDeclr,
    AbstractMethodDeclr,
    Expression,
    ArrayInit,
    Literal,
    BooleanLiteral,
    Primary,
    ArrayCreation,
    PrimaryNoNewArray,
    ClassInstanceCreation,
    FieldAccess,
    MethodInvocation,
    ArrayAccess,
    PostFixExpression,
    UnaryExpression,
    UnaryExpressionNotMinus,
    CastExpression,
    MultExpression,
    AddExpression,
    RelationalExpression,
    EqualityExpression,
    AndExpression,
    ExorExpression,
    OrExpression,
    CondAndExpression,
    CondOrExpression,
    AssignmentExpression,
    LHS,
    Assignment,
    LocalVarDeclrStatement,
    Statement,
    LocalVarDeclr,
    StatementNoTrailingSub,
    StatementNoShortIf,
    IfThenElseNoShortIf,
    WhileNoShortIf,
    ForNoShortIf,
    EmptyStatement,
    IfThenStatement,
    IfThenElseStatement,
    WhileStatement,
    ForStatement,
    ExpressionStatement,
    BreakStatement,
    ContinueStatement,
    ReturnStatement,
    ForInit,
    ForUpdate,
    BlockStatement,
    StatementExpression;

    // Fields
    final boolean isNonTerminal;
    final String symbolString;

    // Statics
    final static HashMap<String, Symbol> quickMap = new HashMap<>();

    static {
        Arrays.stream(values()).forEach(
                s -> quickMap.put(s.symbolString, s)
        );
    }

    public static Symbol fromString(String str) {
        return quickMap.getOrDefault(str, null);
    }


    // Ctor
    Symbol(String str) {
        symbolString = str;
        isNonTerminal = false;
    }

    Symbol() {
        symbolString = this.name();
        isNonTerminal = true;
    }

    public String getSymbolString() {
        return symbolString;
    }
}
