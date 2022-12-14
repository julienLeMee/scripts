#!/bin/bash

echo "------------------ INITIALISATION D'UN NOUVEAU PROJET REACT------------------"

################### SCRIPT POUR NOUVEAU PROJET REACT ###################

#================== avoir le droit d'éxécuter le script : ==================#
#================== chmod +x ./NOM_DU_SCRIPT ==================#

#================== lancer le script : ==================#
#================== ./NOM_DU_SCRIPT.sh ==================#


read -p "Nom du projet (penser à le copié/coller pour l'étape suivante) : " NOM_DU_PROJET

npm create vite@latest

# se placer dans le dossier du projet
cd $NOM_DU_PROJET

echo "------------------ CREATION DU DOSSIER COMPONENTS ------------------"

# créer le dossier components
mkdir components

echo "------------------ CREATION DES COMPONENTS ------------------"

# créer les fichiers de components de bases
touch ./components/Navbar.jsx ./components/Content.jsx ./components/Footer.jsx

echo "------------------ IMPORTATIONS DES COMPONENTS ------------------"

# link les components dans index.js
echo "import Navbar from './components/Navbar'
import Content from './components/Content'
import Footer from './components/Footer'
import './App.css'

export default function App() {
    return (
        <div className='App'>
            <Navbar />
            <Content />
            <Footer />
        </div>
    )
}" > ./src/App.jsx

npm install

echo "------------------ PROJET CREER AVEC SUCCES ------------------"

code .

npm run dev
