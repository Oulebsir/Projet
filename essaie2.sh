#!/bin/bash
if [ -z $1 ]
then echo "expected arguments, please check the help : initdev --help." $1
elif [ "$1" = "--help" ]
then echo "Name: $0 est une application permettant d'entamer la création d'un nouveau projet, donc d'un répertoire contenant les fichiers nécessaires;
Syntax: ./essaie.sh -nomproj -arg ;
Arguments: --c : Projet en C
           --cpp ou C++ : Projet en C++
           --pv         : Projet en python
           --latex      : Projet de rédaction en Latex
           --beamer     : Projet de présentation en Beamer 
Licenses prises en charge par le programme : GPL et MIT
BY: Oulebsir Samy ; Email : samy.oulebsir@outlook.fr"
elif [ "$2" != "GPL" ] && [ "$2" != "MIT" ] && [ -n $2 ]
then echo "Unknown Arguments , please check the help : ./essaie.sh --help "
else 
mkdir "$1"
cd $1
touch main
touch license.txt
touch MAKEFILE
echo "Succés! répértoire du projet $1 crée."

if [ "$2" = "GPL" ]
then
echo "GPL: General Public License" > license.txt
elif [ "$2" = "MIT" ] 
then echo "MIT : License MIT" > license.txt
else echo "Pas de license attribuées au projet."
fi

fi



