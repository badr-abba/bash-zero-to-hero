#!/bin/bash

# Script d'analyse de logs simulés

LOG_FILE="server.log"

# 1. Génération de logs simulés
echo "Création du fichier de log simulé..."
cat << EOF > $LOG_FILE
192.168.1.1 - 200 OK - /index.html
192.168.1.2 - 404 Not Found - /secret.html
192.168.1.1 - 200 OK - /about.html
10.0.0.5 - 500 Internal Server Error - /api/v1/data
192.168.1.2 - 200 OK - /contact.html
192.168.1.3 - 404 Not Found - /old-page.html
192.168.1.1 - 200 OK - /css/style.css
EOF

echo "--- Analyse du fichier $LOG_FILE ---"

echo ""
echo "1. Nombre total de requêtes :"
wc -l < $LOG_FILE

echo ""
echo "2. Nombre d'erreurs 404 :"
grep -c "404 Not Found" $LOG_FILE

echo ""
echo "3. Liste des adresses IP uniques :"
# cut -d " " -f1 : Prend le premier champ (IP) séparé par espace
# sort : Trie les IPs
# uniq : Supprime les doublons
cut -d " " -f1 $LOG_FILE | sort | uniq

echo ""
echo "4. Codes de statut rencontrés :"
awk '{print $3}' $LOG_FILE | sort | uniq -c

# Nettoyage
# rm $LOG_FILE
