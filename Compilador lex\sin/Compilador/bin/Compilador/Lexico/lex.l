package scanner1;
import java_cup.runtime.*;

%%

/*options*/
%cup
%class Lexer
%unicode
%line
%column


letra=[a-zA-Z]
Digito = [0-9]
es= [\ \t\f\r\n\s]

numero = {Digito}*
ID={letra}({letra}|{numero})*
%%

	"INT" { return new java_cup.runtime.Symbol(sym.intt); }
    "DEF" { return new java_cup.runtime.Symbol(sym.def); }
    "IF" { return new java_cup.runtime.Symbol(sym.iff); }
    "ELSE" { return new java_cup.runtime.Symbol(sym.elsee); }
    "SWITCH" { return new java_cup.runtime.Symbol(sym.switchh); }
    "WHILE" { return new java_cup.runtime.Symbol(sym.whilee); }
	"INICIO" { return new java_cup.runtime.Symbol(sym.inicio); }
	"FIM" { return new java_cup.runtime.Symbol(sym.fim); }
    {ID} { return new java_cup.runtime.Symbol(sym.id); }

    {numero} { return new java_cup.runtime.Symbol(sym.numero) ; }

    "{" { return new java_cup.runtime.Symbol(sym.abrecha); }
    "}" { return new java_cup.runtime.Symbol(sym.fechacha); }
    "-" { return new java_cup.runtime.Symbol(sym.menos ); }
    "+" { return new java_cup.runtime.Symbol(sym.mais ); }
    "*" { return new java_cup.runtime.Symbol(sym.mult ); }
    "/" { return new java_cup.runtime.Symbol(sym.div ); }
    "--" { return new java_cup.runtime.Symbol(sym.menosmenos ); }
    "++" { return new java_cup.runtime.Symbol(sym.maismais ); }
    "<" { return new java_cup.runtime.Symbol(sym.menorque ); }
    ">" { return new java_cup.runtime.Symbol(sym.maiorque ); }
    "<=" { return new java_cup.runtime.Symbol(sym.menorigual); }
    ">=" { return new java_cup.runtime.Symbol(sym.maiorigual ); }
    "==" { return new java_cup.runtime.Symbol(sym.comparacao ); }
    "(" { return new java_cup.runtime.Symbol(sym.abrepar); }
    ")" { return new java_cup.runtime.Symbol(sym.fechapar); }
    "=" { return new java_cup.runtime.Symbol(sym.atr ); }
    ";" { return new java_cup.runtime.Symbol(sym.pv ); }
    
    {es}     { /* ignore */ }
      
      . { throw new Error("Caractere não reconhecido: <" + yytext() + ">"); }

