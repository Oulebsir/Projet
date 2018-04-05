#!/bin/bash
if [ -z $1 ]
then echo " Uknown arguments, please check the help : initdev --help"
exit 1;

elif [ $# == 1 ] &&[ "$1" = "--help" ]
then echo "Name : initdev , application de création de projet personnel, sous licence et avec type de fichier.
Syntaxe : initdev *nom_projet --typeprojet *license;
Nom du projet : doit contenir au moins un caractère.

Type_Projet: --c : Projet en languag C;
--c++   : Projet en language C++;
--py             : Projet en language Pyton;
--latex          : Projet en présentation latex;
--beamer         : Projet en présentation beamer;

Licenses: GPL: General Public License.
          MIT: License MIT.

Fait par : OULEBSIR Samy Abdelhak.
E-mail   : samy.oulebsir@outlook.fr"
#1 seul argument
elif [ $# == 1 ] &&[ "$1" != "--help" ]
then echo "Création d'un répertoire sans license ni type. "
mkdir $1
touch License
touch Makefile
touch Main

#2 arguments
elif [ $# == 2 ] && [ "$2" != "--c" ] && [ "$2" != "--cpp" ] && [ "$2" != "--py" ] && [ "$2" != "--beamer" ] && [ "$2" != "--latex" ] && [ -n "$2" ]; then 
echo " Unknown arguments , please check the help : ./initdev.sh --help"
exit 1;
elif [ $# == 2 ] && [ "$2" = "--c" ] 
then mkdir $1
cd $1
touch License
touch Makefile
touch main.c
echo "Projet en programme C";

elif [ $# == 2 ] && [ "$2" = "--c++" ]
then mkdir $1
cd $1
touch License
touch Makefile
touch main.cpp
echo "Projet en programme C++"

elif [ $# == 2 ] && [ "$2" = "--py" ]
then mkdir $1
cd $1
touch License
touch Makefile
touch main.py
echo "Projet en programme Python"

elif [ $# == 2 ] && [ "$2" = "--latex" ]
then mkdir $1
cd $1
touch License
touch Makefile
touch main.tex
echo "Projet en présentation Latex"

elif [ $# == 2 ] && [ "$2" = "--beamer" ]
then mkdir $1
cd $1
touch License
touch Makefile
touch main.sty
echo "Projet en présentation Beamer"


#3 arguments
elif [ $# == 3 ] && [ "$3" != "MIT" ] && [ "$3" != "GPL" ] && [ -n $3 ] 
then echo " Unknown arguments , please check the help : ./initdev.sh --help" 
elif [ $# == 3 ] && [ "$2" != "--c" ] && [ "$2" != "--cpp" ] && [ "$2" != "--py" ] && [ "$2" != "--beamer" ] && [ "$2" != "--latex" ] && [ -n "$2" ];
then echo " Unknown arguments , please check the help : ./initdev.sh --help" 

#3 arguments (licence GPL)
elif [ $# == 3 ] && [ "$3" = "GPL" ] && [ "$2" = "--c" ]
then mkdir $1
cd $1
touch License.txt
echo "GPL: General Public License" > License.txt
touch Makefile
touch main.c
echo "Projet en programme C"
echo "License GPL"

elif [ $# == 3 ] && [ "$3" = "GPL" ] && [ "$2" = "--c++" ]
then mkdir $1
cd $1
touch License.txt
echo "GPL: General Public License" > License.txt
touch Makefile
touch main.cpp
echo "Projet en programme C++"
echo "License GPL"

elif [ $# == 3 ] && [ "$3" = "GPL" ] && [ "$2" = "--py" ]
then mkdir $1
cd $1
touch License.txt
echo "GPL: General Public License" > License.txt
touch Makefile
touch main.py
echo "Projet en programme Python"
echo "License GPL"

elif [ $# == 3 ] && [ "$3" = "GPL" ] && [ "$2" = "--latex" ]
then mkdir $1
cd $1
touch License.txt
echo "GPL: General Public License" > License.txt
touch Makefile
touch main.tex
echo "Projet en présentation Latex"
echo "License GPL"

elif [ $# == 3 ] && [ "$3" = "GPL" ] && [ "$2" = "--beamer" ]
then mkdir $1
cd $1
touch License.txt
echo "GPL: General Public License" > License.txt
touch Makefile
touch main.sty
echo "Projet en présentation Beamer"
echo "License GPL"


#3 arguments , licence MIT
elif [ $# == 3 ] && [ "$3" = "MIT" ] && [ "$2" = "--c" ]
then mkdir $1
cd $1
touch License.txt
echo "MIT : License MIT" > License.txt
touch Makefile
touch main.c
echo "Projet en programme C"
echo "License MIT "

elif [ $# == 3 ] && [ "$3" = "MIT" ] && [ "$2" = "--c++" ]
then mkdir $1
cd $1
touch License.txt
echo "MIT : License MIT" > License.txt
touch Makefile
touch main.cpp
echo "Projet en programme C++"
echo "License MIT "


elif [ $# == 3 ] && [ "$3" = "MIT" ] && [ "$2" = "--py" ]
then mkdir $1
cd $1
touch License.txt
echo "MIT : License MIT" > License.txt
touch Makefile
touch main.py
echo "Projet en programme python"
echo "License MIT "

elif [ $# == 3 ] && [ "$3" = "MIT" ] && [ "$2" = "--latex" ]
then mkdir $1
cd $1
touch License.txt
echo "MIT : License MIT" > License.txt
touch Makefile
touch main.tex
echo "Projet en présentation Beamer"
echo "License MIT "

elif [ $# == 3 ] && [ "$3" = "MIT" ] && [ "$2" = "--beamer" ]
then mkdir $1
cd $1
touch License.txt
echo "MIT : License MIT" > License.txt
touch Makefile
touch main.sty
echo "Projet en présentation Beamer"
echo "License MIT "

fi





