#!/bin/bash

################### SCRIPT POUR NOUVEAU PROJET AVEC SAAS ###################

#================== avoir le droit d'éxécuter le script : ==================#
#================== chmod +x ./NOM_DU_SCRIPT ==================#

#================== lancer le script : ==================#
#================== ./NOM_DU_SCRIPT.sh ==================#


read -p "Nom du projet : " NOM_DU_PROJET
mkdir $NOM_DU_PROJET

cd $NOM_DU_PROJET

npm init

gsed -i 's/..............\\"Error: no test specified............/"sass": "sass --watch .\/main.scss:.\/public\/style.css/' ./package.json

# créer le fichier index.html, main.scss et script.js
touch index.html main.scss script.js

# écrire <link rel="stylesheet" href="/public/style.css"> dans index.html
echo '<link rel="stylesheet" href="/public/style.css">' > index.html

# écrire <script src="main.js"></script> dans index.html
echo '<script src="main.js"></script>' >> index.html

# créer le dossier components
mkdir components

# créer le fichier _variables.scss dans le dossier components
touch ./components/_variables.scss

# écrire @import './components/variables' dans le fichier _variables.scss
echo "@import './components/variables';" > main.scss

cd $NOM_DU_PROJET

code .

npm run sass
