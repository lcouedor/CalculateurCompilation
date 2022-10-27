rm parser*.*
rm sym*.*
rm Yylex*.*
rm CUP*

clear

LEX="ex.flex"
CUP="ex.cup"
ENTREE="entree"
LOCATION="/Users/leocouedor/Documents/ressources/java-cup-v11a.jar java_cup.Main"

jflex $LEX
#java -cp /Users/leocouedor/Documents/ressources/java-cup-v11a.jar java_cup.Main -dump $CUP
java -cp $LOCATION $CUP
javac -nowarn parser.java sym.java Yylex.java

clear

java parser < $ENTREE