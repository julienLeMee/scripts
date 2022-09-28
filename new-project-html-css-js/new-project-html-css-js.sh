#!/bin/bash

echo "------------------ INITIALISATION D'UN NOUVEAU PROJET ------------------"

################### SCRIPT POUR LANCER UN PROJET SIMPLE ###################

#================== avoir le droit d'éxécuter le script : ==================#
#================== chmod +x ./NOM_DU_SCRIPT ==================#

#================== lancer le script : ==================#
#================== ./NOM_DU_SCRIPT.sh ==================#


read -p "Nom du projet : " NOM_DU_PROJET
mkdir $NOM_DU_PROJET

cd $NOM_DU_PROJET

# créer le fichier index.html, style.css et script.js
touch index.html style.css script.js

while true; do
    read -p "
##############################
##############################

Would you like components?

##############################
##############################

    >" yn
        case $yn in
                [Yy]* )
                  chmod +x ./add_components.sh
                  ./add_components.sh
                ; break;;

                [Nn]* )
                  chmod +x ./barebones.sh
                  ./barebones.sh; exit;;

                * ) echo "Please answer yes or no.";;
        esac
done

# écrire le squelette de base du html et lier le css et le javascript
