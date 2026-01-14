# Module 2 : Variables et Types de Données

## 🎯 Objectifs du Chapitre
- Comprendre comment stocker des informations dans des variables.
- Différencier les variables locales et d'environnement.
- Interagir avec l'utilisateur via `read`.
- Effectuer des calculs mathématiques simples.

---

## 1. Les Variables
Une variable est une zone mémoire avec un nom, utilisée pour stocker une valeur.
En Bash, les variables sont **non typées** par défaut (tout est considéré comme une chaîne de caractères).

### Déclaration et Utilisation
- Pas d'espaces autour du signe `=` à l'affectation !
- Utiliser `$` pour lire la valeur.

```bash
prenom="Badr"        # Correct
nom = "Abba"         # Erreur ! Espaces interdits.

echo "Bonjour $prenom"
```

### Bonnes Pratiques
- Utilisez des majuscules pour les constantes ou variables d'environnement (`PATH`, `USER`).
- Utilisez des minuscules pour vos variables de script (`compteur`, `fichier_tmp`).
- Entourez les variables de `{}` quand c'est ambigu : `echo "${prenom}eddine"`.

## 2. Variables d'Environnement
Ce sont des variables définies par le système et disponibles pour tous les processus.
- `USER` : Nom de l'utilisateur actuel.
- `HOME` : Chemin du dossier personnel.
- `PWD` : Dossier de travail actuel.

Pour voir toutes les variables d'environnement, tapez `env` ou `printenv`.

## 3. Interaction Utilisateur (`read`)
La commande `read` permet de demander une saisie à l'utilisateur.

```bash
echo "Quel est votre âge ?"
read age
echo "Vous avez $age ans."
```

Avec l'option `-p` (prompt), on peut simplifier :
```bash
read -p "Quel est votre âge ? " age
```

## 4. Expansion Arithmétique
Bash permet de faire des calculs entiers avec la syntaxe `$(( ... ))`.

```bash
a=10
b=5
somme=$((a + b))
echo $somme  # Affiche 15
```
Opérateurs : `+`, `-`, `*`, `/` (division entière), `%` (modulo).

> **Note** : Bash ne gère pas nativement les nombres à virgule (flottants). Pour cela, on utilise souvent l'outil `bc`.

## 5. Exercices
1. Créez un script `identite.sh` qui demande :
   - Le prénom.
   - Le nom.
   - L'année de naissance.
   - Et qui affiche : "Bonjour [Prénom] [Nom], vous avez environ [Age] ans." (Calculer l'âge approximatif avec l'année en cours).

2. Créez un mini-calculateur `calc.sh` qui prend deux nombres et affiche leur somme et leur produit.

---
[Précédent](../01_Introduction/README.md) | [Suivant : Module 3 - Contrôle de Flux](../03_Controle_de_Flux/README.md)
