# Module 6 : Scripting Avancé

## 🎯 Objectifs du Chapitre
- Gérer les erreurs de manière robuste (`set -e`, `exit codes`).
- Utiliser des tableaux (arrays) indicés et associatifs.
- Intercepter les signaux systèmes avec `trap`.
- Déboguer efficacement vos scripts.

---

## 1. Gestion des Erreurs ('Safety First')

### Arrêt immédiat en cas d'erreur
Par défaut, Bash continue l'exécution même si une commande échoue. Pour changer cela :
```bash
set -e  # Quitte immédiatement si une commande retourne une erreur (non 0)
set -u  # Quitte si on utilise une variable non définie
set -o pipefail # Retourne une erreur si une partie d'un pipe échoue
```

### Codes de sortie
Chaque commande renvoie un code : `0` = OK, `1-255` = Erreur.
Variable `$?` contient le code de la dernière commande.

## 2. Les Tableaux (Arrays)

### Tableaux Indicés
```bash
fruits=("Pomme" "Banane" "Orange")
echo ${fruits[0]}   # Pomme
echo ${fruits[@]}   # Tous les éléments
echo ${#fruits[@]}  # Nombre d'éléments
```

### Tableaux Associatifs (Clé-Valeur)
Nécessite Bash 4+.
```bash
declare -A user_info
user_info[nom]="Smith"
user_info[prenom]="John"

echo ${user_info[nom]}
```

## 3. Gestion des Signaux (Trap)
Vous pouvez définir une action à exécuter quand le script reçoit un signal (ex: Ctrl+C).
C'est très utile pour nettoyer des fichiers temporaires.

```bash
cleanup() {
    rm -f /tmp/mon_fichier_temp
    echo "Nettoyage effectué."
}

# Appelle cleanup si le script se termine (EXIT) ou est interrompu (SIGINT)
trap cleanup EXIT SIGINT
```

## 4. Débogage
- `bash -x script.sh` : Affiche chaque commande avant de l'exécuter.
- `set -x` dans le script pour activer le mode debug, `set +x` pour le désactiver.

## 5. Exercices
1. Écrivez un script "sûr" commence par `set -euo pipefail`.
2. Créez un script qui stocke une liste de serveurs dans un tableau et fait un `ping` sur chacun d'eux.

---
[Précédent](../05_Manipulation_de_Texte/README.md) | [Suivant : Module 7 - Projets Pratiques](../07_Projets_Pratiques/README.md)
