#!/bin/bash

# Manipulation des tableaux

# 1. Tableau simple (Indicé)
echo "--- Liste de serveurs ---"
serveurs=("192.168.1.10" "192.168.1.20" "google.com" "localhost")

# Ajouter un élément
serveurs+=("10.0.0.1")

# Parcourir le tableau
for srv in "${serveurs[@]}"; do
    echo "Pinging $srv ..."
    # ping -c 1 "$srv" > /dev/null 2>&1
    # if [ $? -eq 0 ]; then echo "OK"; else echo "ECHEC"; fi
done

echo ""
echo "Nombre de serveurs : ${#serveurs[@]}"

# 2. Tableau Associatif (Bash 4+)
echo ""
echo "--- Tableau Associatif ---"
declare -A capitales
capitales[France]="Paris"
capitales[Espagne]="Madrid"
capitales[Italie]="Rome"

echo "La capitale de la France est : ${capitales[France]}"

echo "Liste des pays connus :"
for pays in "${!capitales[@]}"; do
    echo "- $pays (Capitale : ${capitales[$pays]})"
done
