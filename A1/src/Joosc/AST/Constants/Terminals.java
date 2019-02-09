package Joosc.AST.Constants;

import java.util.ArrayList;
import java.util.Arrays;

public enum Terminals implements Symbol {
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
    Abstract("abstract");

    static {
        Arrays.asList(values()).forEach(
                (t) -> Symbol.allContent.put(t.kind, t)
        );
    }

    private String kind;
    Terminals(String kind) {
        this.kind = kind;
    }

    @Override
    public String toStringSymbol() {
        return kind;
    }

}
