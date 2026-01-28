#!/bin/bash

# ============================================================
# PROJET B : SAUVEGARDE AUTOMATIQUE AVEC ROTATION
# Auteur : Badreddine ABBA
# ============================================================

set -u # Erreur si variable non définie

# --- CONFIGURATION ---
SOURCE_DIR="$HOME/Documents"          # Dossier à sauvegarder
BACKUP_DIR="$HOME/Backups"            # Destination
RETENTION_DAYS=7                      # Jours de rétention
LOG_FILE="$BACKUP_DIR/backup.log"     # Fichier de log
DATE_STR=$(date +%Y%m%d_%H%M%S)
BACKUP_NAME="backup_$DATE_STR.tar.gz"

# --- FONCTIONS ---

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

check_dirs() {
    if [ ! -d "$SOURCE_DIR" ]; then
        log "ERREUR: Le dossier source $SOURCE_DIR n'existe pas."
        exit 1
    fi

    if [ ! -d "$BACKUP_DIR" ]; then
        log "INFO: Création du dossier de backup $BACKUP_DIR"
        mkdir -p "$BACKUP_DIR"
    fi
}

perform_backup() {
    log "Démarrage de la sauvegarde de $SOURCE_DIR..."
    
    # Création de l'archive tar
    # 2> /dev/null cache les erreurs de permission si non-root
    tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")" 2>/dev/null

    if [ $? -eq 0 ]; then
        log "SUCCÈS: Sauvegarde créée : $BACKUP_DIR/$BACKUP_NAME"
        
        # Calcul de la taille
        size=$(du -h "$BACKUP_DIR/$BACKUP_NAME" | cut -f1)
        log "Taille de l'archive : $size"
    else
        log "ERREUR: Echec de la commande tar."
        exit 1
    fi
}

cleanup_old_backups() {
    log "Nettoyage des sauvegardes de plus de $RETENTION_DAYS jours..."
    
    # find cherche les fichiers modifiés il y a +N jours et les supprime
    find "$BACKUP_DIR" -name "backup_*.tar.gz" -mtime +$RETENTION_DAYS -exec rm {} \; -print0 | while read -d $'\0' file; do
        log "SUPPRESSION: $file"
    done
}

# --- MAIN ---

check_dirs
perform_backup
cleanup_old_backups

log "Opération terminée."
echo "-----------------------------------"
