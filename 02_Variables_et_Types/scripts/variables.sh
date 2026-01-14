#!/bin/bash

# Démonstration des variables et de la commande read

# 1. Variables statiques
cours="Cours Bash"
version=1.0

echo "Bienvenue dans le $cours v$version"

# 2. Variables d'environnement
echo "Lancement par l'utilisateur : $USER"
echo "Depuis le dossier : $PWD"

# 3. Interaction dynamique
echo ""
echo "--- Configuration ---"
read -p "Entrez votre nom de projet : " projet_nom
read -p "Entrez le dossier de sauvegarde [défaut: /backup] : " dossier_backup

# Gestion de valeur par défaut (paramètre expansion)
# Si dossier_backup est vide, on utilise /backup
dossier_backup=${dossier_backup:-/backup}

echo ""
echo "Résumé :"
echo "Projet : $projet_nom"
echo "Cible  : $dossier_backup"
