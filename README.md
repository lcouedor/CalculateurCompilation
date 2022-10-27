# Le projet
Projet de compilation réalisé avec jflex et jcup. Réalisation d'un analyseur syntaxique permettant les opérations sur les entiers et les chaines de caractères, avec stockage de variables.

## Grammaire utilisée : (sans les cas d'erreur)
```
prog -> 
intExpr EOL prog | strExpr EOL prog| EOL prog | PRINT | ε
```

```
strExpr -> 
strExpr SOMME strExpr | strExpr MULT intExpr | intExpr MULT strExpr | PAROUVRE strExpr PARFERME | VARIABLECHAINE EGAL strExpr | CHAINE | VARIABLECHAINE
```

```
intExpr -> 
intExpr SOMME intExpr | intExpr MULT intExpr | PAROUVRE intExpr PARFERME | VARIABLECHIFFRE EGAL intExpr | ENTIER | VARIABLECHIFFRE
```

## Limites :
Les caractères non reconnus par le langage causent l'arrêt de l'exécution du programme.
Le programme doit obligatoirement terminer par une ligne vide.

## Utilisation : 
Lancer l'exécution du script après avoir paramétré les variables, particulièrement celle indiquant la localisation de Java Cup.
Le fichier "entree" indique l'ensemble des opérations qui seront traitées par le programme.