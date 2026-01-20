#!/bin/bash

# Introduction aux fonctions

# Définition simple
dire_bonjour() {
    echo "Bonjour tout le monde !"
}

# Fonction avec arguments
saluer_personne() {
    local nom=$1
    echo "Salut $nom, comment vas-tu ?"
}

# Fonction avec vérification d'arguments
creer_dossier() {
    if [ -z "$1" ]; then
        echo "Erreur : Nom de dossier manquant."
        return 1
    fi
    
    mkdir -p "$1"
    echo "Dossier '$1' créé avec succès."
    return 0
}

# --- Exécution ---

echo "1. Appel simple :"
dire_bonjour

echo ""
echo "2. Appel avec paramètre :"
saluer_personne "Alice"
saluer_personne "Bob"

echo ""
echo "3. Test de création de dossier :"
creer_dossier "test_dossier"

# Vérification du code de retour ($?)
if [ $? -eq 0 ]; then
    echo "-> Opération réussie."
    rmdir "test_dossier" # Nettoyage
else
    echo "-> Opération échouée."
fi
