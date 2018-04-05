#!/bin/bash


# $# retourne le nombre d'elements données a l'execution de la commande initdev
#on teste si ce nombre est supèrieur a 4
if test $# -gt 4 
then
echo "Expected arguments, please check the help : initdev –help"
exit 1
#on teste si aucun element est donné en entrée
else
	if test $# -eq 0 
	then
	echo "Expected arguments, please check the help : initdev –help"
	exit 1

		else 
			#si le USER demande le help
			if test $1 = "-help"
			then
				echo "-Name : lapplication se nomme initdev
				— Syntax :la syntaxe s'ecrit initdev nom-de-pro args
				— args : -C pour un fichier c
                                         -C++ pour un fichier C++
                                         -Py pour un programme python
                                         -Beamer pour un fichier
		                         -GPL pour ule licence GPL
                                         -MIT pour ule licence MIT
 				— author:+++++Author : AKIL Lotfi ++++++
 				        +++++E-MAIL : akil.lotfi@gmail.com++++++"
 															



#Dans le cas ou le nombre est entre 0 et 4
#on récupère le nom du projet avec $1 et on vas créer le projet et leur dossiers et fichiers
#mkdir pour créer les dossiers
#touch pour créer les fichiers 
else

mkdir $1
mkdir $1/bin
mkdir $1/licenses
mkdir $1/makfiles
mkdir $1/sources
touch $1/install.sh
touch $1/LICENCES
touch $1/makefile

#Si le nombre d'argument est egale a 3,
#dont le premier est le nom du projet 

if test $# -eq 3
then
#l'ordre entre le langage et licence et le git n'est pas important
#donc on test tout les cas
	case $4 in 
	 	-C) touch $1/main.c;;
     	-CPP) touch $1/main.cpp;;
     	-PYTHON) touch $1/main.py;;
     	-GPL) #l'utilisation de la commande >> pour copier la sortie standard dans le fichier précisé

			echo GENERAL PUBLIC LICENSE >> $1/LICENCES
           	touch $1/main ;;
     	-MIT) echo Licence MIT >> $1/LICENCES
           touch $1/main;;
           #initialisation du projet git et creation du dossier cacher git
     	 -git) git init $1;;
			
     	 *) echo "Uknown arguments, please check the help : initdev –help"

        exit 1;;
	esac

case $3 in 
	 -C) touch $1/main.c;;
     -CPP) touch $1/main.cpp;;
     -PYTHON) touch $1/main.py;;
     -GPL) echo GENERAL PUBLIC LICENSE >> $1/LICENCES
           touch $1/main ;;
     -MIT) echo Licence MIT >> $1/LICENCES
           touch $1/main;;
      -git) git init $1;;
      *) echo "Uknown arguments, please check the help : initdev –help"
           exit 1;;
esac


case $2 in 
	 -C) touch $1/main.c;;
     -CPP) touch $1/main.cpp;;
     -PYTHON) touch $1/main.py;;
     -GPL) echo GENERAL PUBLIC LICENSE >> $1/LICENCES
           touch $1/main ;;
     -MIT) echo Licence MIT >> $1/LICENCES
           touch $1/main;;
      -git) echo "You must set project type, please check the help : initdev –help";;
      *) echo "Uknown arguments, please check the help : initdev –help"
           exit 1;;
esac




fi

if test $# -eq 2
then

case $2 in 
	 -C) touch $1/main.c;;
     -CPP) touch $1/main.cpp;;
     -PYTHON) touch $1/main.py;;
     -GPL) echo GENERAL PUBLIC LICENSE >> $1/LICENCES
           touch $1/main ;;
     -MIT) echo Licence MIT >> $1/LICENCES
           touch $1/main;;
      *) echo "Uknown arguments, please check the help : initdev –help"
           exit 1;;
esac

fi	




#Dans le cas ou le nombre d'élements est égale a 1
#(seulement le nom du projet sans citer le langage)
#creation du fichier main sans extention précise
touch $1/main;
exit 0

fi
fi
fi

