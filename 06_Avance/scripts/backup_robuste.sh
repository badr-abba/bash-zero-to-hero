#!/bin/bash
# Mode "Strict" pour éviter les bugs silencieux
set -euo pipefail

# Définition d'un dossier temporaire
TEMP_DIR="/tmp/test_bash_safe_$(date +%s)"

# Fonction de nettoyage appelée automatiquement à la fin
cleanup() {
    echo "--> [Cleanup] Nettoyage en cours..."
    if [ -d "$TEMP_DIR" ]; then
        rm -rf "$TEMP_DIR"
        echo "--> [Cleanup] Dossier temporaire supprimé."
    fi
}
trap cleanup EXIT

echo "--- Script Robuste ---"
echo "Création du dossier temporaire : $TEMP_DIR"
mkdir -p "$TEMP_DIR"

echo "Génération d'un fichier..."
echo "Données importantes" > "$TEMP_DIR/data.txt"

# Simulation d'une erreur (décommentez pour tester l'arrêt immédiat)
# cp "$TEMP_DIR/data.txt" "/dossier/inexistant/"

echo "Opération terminée avec succès."
# Le nettoyage se fera automatiquement ici grâce au 'trap EXIT'
