#!/bin/bash

# Démonstration des conditions if/else

read -p "Entrez un nom de fichier à vérifier : " filename

if [ -z "$filename" ]; then
    echo "Erreur : Vous n'avez rien saisi."
    exit 1
fi

if [ -e "$filename" ]; then
    echo "Le fichier '$filename' existe."
    
    if [ -d "$filename" ]; then
        echo "C'est un dossier."
    elif [ -f "$filename" ]; then
        echo "C'est un fichier régulier."
        if [ -x "$filename" ]; then
            echo "Et il est exécutable !"
        fi
    else
        echo "C'est un autre type de fichier."
    fi
else
    echo "Le fichier '$filename' n'existe pas."
fi

# Comparaison de nombres
read -p "Entrez une note sur 20 : " note

if [ "$note" -ge 10 ] && [ "$note" -le 20 ]; then
    echo "Bravo, vous avez la moyenne."
elif [ "$note" -lt 10 ] && [ "$note" -ge 0 ]; then
    echo "Dommage, il faut réviser."
else
    echo "Note invalide (doit être entre 0 et 20)."
fi
