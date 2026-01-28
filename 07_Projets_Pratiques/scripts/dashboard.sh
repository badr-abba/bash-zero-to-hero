#!/bin/bash

# ============================================================
# PROJET A : DASHBOARD SYSTÈME
# Auteur : Badreddine ABBA
# Description : Affiche les métriques clés du système
# ============================================================

# Couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

clear
echo -e "${BLUE}==============================================${NC}"
echo -e "${BLUE}       TABLeAU DE BORD SYSTÈME (BASH)         ${NC}"
echo -e "${BLUE}==============================================${NC}"
echo "Date : $(date)"
echo "----------------------------------------------"

# 1. Charge CPU (via uptime ou top)
echo -e "${GREEN}[+] Charge Système (Load Average)${NC}"
uptime | cut -d: -f4-

echo ""
# 2. Mémoire (en Mo)
echo -e "${GREEN}[+] Utilisation Mémoire (free -mh)${NC}"
free -h | grep "Mem" | awk '{print "Total: " $2 " | Utilisé: " $3 " | Libre: " $4}'

echo ""
# 3. Disque
echo -e "${GREEN}[+] Espace Disque (Racine /)${NC}"
df -h / | awk 'NR==2 {print "Total: " $2 " | Utilisé: " $3 " (" $5 ") | Libre: " $4}'

echo ""
# 4. Top Processus
echo -e "${GREEN}[+] Top 3 Processus (CPU)${NC}"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 4

echo ""
echo -e "${BLUE}==============================================${NC}"
