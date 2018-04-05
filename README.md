# Projet
Ce programme "initdev" permet pour un utilisateur veuillant créer un projet quelconque, de faire appel à cette commande qui fait le travail suivant:
Création d'un répertoire portant le nom du projet.
Attribution de license au projet.
Création de fichier main.* selon le type de programme à utilisé ( C, C++ , Python, latex , beamer)





Il est à noter que pour ajouter initdev au path,à supposé que notre fichier initdev se trouve dans un fichier caché nommé ".initdev" dans le /home/user, on exécute la commande suivante dans le terminale: "export PATH=$HOME/.initdev:$PATH"
Puis pour l'avoir dans le path de façon permanente , on edite le fichier .bashrc qui se trouve dans le $HOME en faisant:
"cd" puis "gedit .bashrc"
Puis le fichier s'ouvre dans editeur de texte et on ajoute la ligne précédente :"export PATH=$HOME/.initdev:$PATH"
Il suffit alors de faire appelle à "initdev" comme une commande: initdev -arg1 -arg2 -arg3.
