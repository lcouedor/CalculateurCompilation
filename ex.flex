import java_cup.runtime.Symbol;

%%

%unicode
%cup
%line
//%debug

entiers = 0|[1-9][0-9]*
chaine = \"[a-zA-Z]+\"
somme = \+
mult = \*
parOuvre = \(
parFerme = \)
variableChaine = \$[a-z]+
variableChiffre = [a-z]+
egal = \=
print = PRINT

%%

{entiers} { return new Symbol(sym.ENTIER, Integer.valueOf(yytext())); }
{chaine} { return new Symbol(sym.CHAINE, new String(yytext())); }
{somme} { return new Symbol(sym.SOMME); }
{mult} { return new Symbol(sym.MULT); }
{parOuvre} { return new Symbol(sym.PAROUVRE); }
{parFerme} { return new Symbol(sym.PARFERME); }
{variableChaine} { return new Symbol(sym.VARIABLECHAINE, new String(yytext())); }
{variableChiffre} { return new Symbol(sym.VARIABLECHIFFRE, new String(yytext())); }
{egal} { return new Symbol(sym.EGAL); }
{print} { return new Symbol(sym.PRINT); }
\n { return new Symbol(sym.EOL); }
\s { }
. { System.out.println("Le caractère \""+yytext()+"\" n'appartient pas au langage"); }
