package umg.compiladores;
import java_cup.runtime.*;

%%
%public
%class  Lexer
%char     
%line   
%column   
%cup
/*
%eofval{
    return new Symbol(sym.EOF,new String ("Fin del Archivo"));
%eofval}
*/
%{
    private Symbol symbol(int tipo, Object valor){ 
    return new Symbol(tipo, yyline, yycolumn,valor);
}
%}

digito = [0-9]
numero = {digito}+
espacios_blanco =[\r|\n|\r\n| |\t]

N = [0-9]
id =[a-zA-Z]
espacios_blanco =[\r|\n|\r\n| |\t]

%%


" " { /* Ignorar espacios en blanco */ }
"\t" { /* Ignorar tabulaciones */ }
 "\n" { /* Ignorar saltos de línea */ }

"float" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.FLOAT, yytext());}
"double" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.DOUBLE, yytext());}
"int" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.INT, yytext());}
"long" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.LONG, yytext());}
"short" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.SHORT, yytext());}
"String" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.STRING, yytext());}
"boolean" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.BOOLEAN, yytext());}
"if" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.IF, yytext());}
"else" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.ELSE, yytext());}
"switch" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.SWITCH, yytext());}
"case" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.CASE, yytext());}
"break" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.BREAK, yytext());}
"default" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.DEFAULT, yytext());}
"for" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.FOR, yytext());}
"while" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.WHILE, yytext());}
"do" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.DO, yytext());}
"Scanner" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.SCANNER, yytext());}
"next" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.NEXT, yytext());}
"nextInt" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.NEXTINT, yytext());}
"nextFloat" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.NEXTFLOAT, yytext());}
"nextDouble" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.NEXTDOUBLE, yytext());}
"nextBoolean" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.NEXTBOOLEAN, yytext());}
"nextLine" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.NEXTLINE, yytext());}
"nextByte" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.NEXTBYTE, yytext());}
"System" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.SYSTEM, yytext());}
"out" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.OUT, yytext());}
"println" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.PRINTLN, yytext());}
"printl" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.PRINTL, yytext());}
"return" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.RETURN, yytext());}




"{" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.LLAVES_ABRE, yytext());}
"}" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.LLAVES_CIERRA, yytext());}
"[" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.CORCHETES_ABRE, yytext());}
"]" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.CORCHETES_CIERRA, yytext());}
"." {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.PUNTO, yytext());}
";" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.PUNTO_Y_COMA, yytext());}
"(" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.PARENTESIS_ABRE, yytext());}
")" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.PARENTESIS_CIERRA, yytext());}
"+" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.SUMA, yytext());}
"-" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.RESTA, yytext());}
"*" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.MULTIPLICACION, yytext());}
"/" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.DIAGONAL_DER, yytext());}
"<" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.MENOR_QUE, yytext());}
">" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.MAYOR_QUE, yytext());}
"=" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.ASIGNACION, yytext());}
"==" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.COMPARACION, yytext());}
"&" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.AND, yytext());}
"&&" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.YY, yytext());}
"%" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.PORCIENTO, yytext());}
":" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.DOS_PUNTOS, yytext());}
">" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.MAYOR_QUE, yytext());}
">=" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.MAYOR_O_IGUAL_QUE, yytext());}
"=>" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.IGUAL_O_MAYOR_QUE, yytext());}
"<" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.MENOR_QUE, yytext());}
"=<" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.IGUAL_O_MENOR_QUE, yytext());}
"<=" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.MENOR_O_IGUAL_QUE, yytext());}
"!=" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.DIFERENTE, yytext());}
"," {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.COMA, yytext());}
"++" {System.out.println("Lexema:  " + yytext()  + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.INCREMENTO, yytext());}


{numero} {System.out.println("Lexema:  " + yytext()+ "       columna:  " + yychar + "     fila:  " + yyline     );return symbol(sym.NUMERO, yytext());}
{id}* {System.out.println("Lexema:  " + yytext()+ "       columna:  " + yychar + "     fila:  " + yyline     );return symbol(sym.IDENTIFICADOR, yytext());}
\"([^\"\\]|\\.)*\" {System.out.println("Lexema:  " + yytext()   + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.ID, yytext());}
{id}({id}|{N})* {System.out.println("Lexema:  " + "ID   "   + "       columna:  " + yychar + "     fila:  " + yyline  );return symbol(sym.COMBINACIONID, yytext());}
{espacios_blanco} {System.out.println("Lexema:  " + yytext() );}
