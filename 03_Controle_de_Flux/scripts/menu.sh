#!/bin/bash

# Menu interactif avec CASE

while true; do
    echo "============================="
    echo "        MENU PRINCIPAL       "
    echo "============================="
    echo "1. Afficher la date et l'heure"
    echo "2. Lister les fichiers ici"
    echo "3. Qui suis-je ?"
    echo "q. Quitter"
    echo "============================="
    
    read -p "Votre choix : " choix

    case $choix in
        1)
            echo "Nous sommes le : $(date)"
            ;;
        2)
            echo "Contenu du dossier :"
            ls -lh
            ;;
        3)
            echo "Utilisateur connecté : $USER"
            ;;
        q|Q)
            echo "Au revoir !"
            break
            ;;
        *)
            echo "Option invalide, réessayez."
            ;;
    esac
    
    echo ""
    read -p "Appuyez sur Entrée pour continuer..."
done
