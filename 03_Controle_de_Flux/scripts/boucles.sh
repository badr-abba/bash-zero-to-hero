#!/bin/bash

# Démonstration des boucles

echo "--- Boucle FOR (Liste simple) ---"
for couleur in Rouge Vert Bleu; do
    echo "Couleur : $couleur"
done

echo ""
echo "--- Boucle FOR (Fichiers .txt) ---"
# Crée des fichiers temporaires pour l'exemple
touch a.txt b.txt c.txt

for fichier in *.txt; do
    echo "Fichier trouvé : $fichier"
done

# Nettoyage
rm a.txt b.txt c.txt

echo ""
echo "--- Boucle WHILE (Compte à rebours) ---"
compteur=5
while [ $compteur -gt 0 ]; do
    echo "$compteur..."
    sleep 0.5  # Attend 0.5 secondes
    ((compteur--))
done
echo "Décollage !"
