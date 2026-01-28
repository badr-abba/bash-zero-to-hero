# Module 7 : Projets Pratiques

## 🎯 Objectifs du Chapitre
Ce dernier module est consacré à la mise en pratique de tout ce que vous avez appris.
Vous allez analyser et exécuter deux scripts complets utilisés couramment dans le monde professionnel.

---

## 1. Projet A : Dashboard de Surveillance (`dashboard.sh`)
Ce script affiche un tableau de bord en temps réel des ressources du système.

### Fonctionnalités
- Affichage de l'utilisation CPU.
- Affichage de la mémoire RAM libre/utilisée.
- Espace disque disponible.
- Top 5 des processus les plus gourmands.

### Utilisation
```bash
chmod +x dashboard.sh
./dashboard.sh
```

## 2. Projet B : Sauvegarde Rotative (`backup.sh`)
Un script de sauvegarde robuste pour archiver vos dossiers importants.

### Fonctionnalités
- Crée une archive `.tar.gz`.
- Ajoute la date et l'heure au nom du fichier.
- Vérifie si le dossier source existe.
- Supprime automatiquement les sauvegardes de plus de 7 jours (rotation).
- Journalise (log) toutes les opérations.

### Utilisation
Editez les variables en haut du script pour définir vos dossiers, puis :
```bash
./backup.sh
```

---
## 🎉 Félicitations !
Vous êtes arrivés au bout de ce cours Bash. Vous avez maintenant les bases solides pour explorer l'automatisation système, le DevOps, et bien plus encore.

**Pour aller plus loin :**
- Explorez `find` et `xargs`.
- Apprenez les expressions régulières (Regex) en profondeur.
- Regardez du côté de Python ou Go pour des scripts plus complexes.
