# Module 4 : Fonctions et Modularité

## 🎯 Objectifs du Chapitre
- Apprendre à définir et appeler des fonctions.
- Comprendre la portée des variables (`local` vs `global`).
- Gérer les arguments de fonctions.
- Utiliser les valeurs de retour (`return` vs `echo`).

---

## 1. Définition d'une Fonction
Une fonction permet de regrouper un bloc de code réutilisable.

```bash
ma_fonction() {
    echo "Ceci est une fonction."
}

# Appel de la fonction
ma_fonction
```

Alternative (mot-clé `function` optionnel mais explicite) :
```bash
function ma_fonction {
    # code
}
```

## 2. Arguments de Fonction
Comme les scripts, les fonctions acceptent des arguments positionnels (`$1`, `$2`, `$@`).

```bash
saluer() {
    echo "Bonjour $1 !"
}

saluer "Badr"  # Affiche: Bonjour Badr !
```

## 3. Portée des Variables (`local`)
Par défaut, toutes les variables sont **globales**. Pour éviter les conflits, utilisez le mot-clé `local` à l'intérieur des fonctions.

```bash
ma_variable="Globale"

changer_variable() {
    local ma_variable="Locale"
    echo "Dans la fonction : $ma_variable"
}

changer_variable        # Affiche "Locale"
echo "Hors fonction : $ma_variable"  # Affiche "Globale"
```

## 4. Valeurs de Retour
En Bash, `return` renvoie un code de statut (0-255), pas une donnée (comme une string). Le 0 signifie "succès".

Pour renvoyer une valeur (ex: résultat d'un calcul), on utilise généralement `echo` (vers stdout) et on capture la sortie.

```bash
calculer() {
    echo $(($1 + $2))
}

resultat=$(calculer 5 10)
echo "Le résultat est $resultat"
```

## 5. Exercices
1. Créez une fonction `est_pair` qui prend un nombre et retourne 0 (vrai) s'il est pair, 1 (faux) sinon.
2. Refactorisez le script calculatrice du Module 2 pour utiliser des fonctions pour chaque opération (`addition`, `soustraction`...).

---
[Précédent](../03_Controle_de_Flux/README.md) | [Suivant : Module 5 - Texte et Fichiers](../05_Manipulation_de_Texte/README.md)
