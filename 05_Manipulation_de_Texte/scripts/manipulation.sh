#!/bin/bash

# Manipulation avancée avec sed et awk

# Création d'un fichier CSV exemple
echo "Nom,Age,Ville
Alice,25,Paris
Bob,30,Lyon
Charlie,22,Marseille
David,35,Paris" > data.csv

echo "--- Fichier Source (data.csv) ---"
cat data.csv
echo "---------------------------------"

echo ""
echo "[sed] Remplacer 'Paris' par 'Bordeaux' :"
sed 's/Paris/Bordeaux/g' data.csv

echo ""
echo "[awk] Afficher uniquement les noms (1ère colonne) :"
# -F, spécifie que le séparateur est la virgule
awk -F, '{print $1}' data.csv

echo ""
echo "[awk] Filtrer les personnes de plus de 25 ans :"
# NR>1 saute l'en-tête, puis condition sur la colonne 2
awk -F, 'NR>1 && $2 > 25 {print $1 " a " $2 " ans."}' data.csv

# Nettoyage
rm data.csv
