#!/bin/bash

echo "------------------ INITIALISATION D'UN NOUVEAU PROJET AVEC SASS ------------------"

#================== avoir le droit d'éxécuter le script : ==================#
#================== chmod +x ./NOM_DU_SCRIPT ==================#

#================== lancer le script : ==================#
#================== ./NOM_DU_SCRIPT.sh ==================#


read -p "Nom du projet : " NOM_DU_PROJET
mkdir $NOM_DU_PROJET

cd $NOM_DU_PROJET

npm init

gsed -i 's/..............\\"Error: no test specified............/"sass": "sass --watch .\/main.scss:.\/public\/style.css/' ./package.json

echo "------------------ CREATION DES FICHIERS DE BASE ------------------"

# créer le fichier index.html, main.scss et script.js
touch index.html main.scss script.js

echo "------------------ CREATION DU SQUELETTE DE BASE HTML ------------------"
echo "------------------ LIER LE FICHIER CSS ------------------"
echo "------------------ LIER LE FICHIER JAVASCRIPT ------------------"

echo '<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <title>Document</title>
</head>
<body>

  <h1>Hello</h1>

<script src="script.js"></script>
</body>
</html>' > index.html

echo "------------------ CREATION DU DOSSIER COMPONENTS ------------------"


# créer le dossier components
mkdir components

echo "------------------ CREATION DU FICHIER VARIABLES.SCSS ------------------"

# créer le fichier _variables.scss dans le dossier components
touch ./components/_variables.scss

echo "------------------ IMPORTATION DU FICHIER VARIABLES.SCSS ------------------"

# écrire @import './components/variables' dans le fichier _variables.scss
echo "@import './components/variables';" > main.scss

echo "This script was created by Julien Le Mee and Mikael Gonsalves "

echo "------------------ PROJET CREER AVEC SUCCES ------------------"

cd $NOM_DU_PROJET

code .

npm run sass
