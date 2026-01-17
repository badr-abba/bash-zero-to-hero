# Module 3 : Contrôle de Flux

## 🎯 Objectifs du Chapitre
- Maîtriser les conditions (`if`, `else`).
- Comprendre les différents opérateurs de comparaison.
- Utiliser les boucles (`for`, `while`) pour répéter des tâches.
- Créer des menus interactifs avec `case`.

---

## 1. Les Conditions (`if`/`else`)
La structure de base est :
```bash
if [ condition ]; then
    # commandes si vrai
elif [ autre_condition ]; then
    # commandes si autre_condition est vraie
else
    # commandes sinon
fi
```
> **Attention** : Les espaces autour des crochets `[` et `]` sont obligatoires !

### Opérateurs de test
- **Nombres** :
  - `-eq` : Égal (=)
  - `-ne` : Différent (!=)
  - `-gt` : Plus grand que (>)
  - `-lt` : Plus petit que (<)
  - `-ge` : Plus grand ou égal (>=)
  - `-le` : Plus petit ou égal (<=)
- **Chaînes** :
  - `=` ou `==` : Égal
  - `!=` : Différent
  - `-z` : Vide (Null)
  - `-n` : Non vide
- **Fichiers** :
  - `-f` : Fichier existe
  - `-d` : Dossier existe
  - `-x` : Exécutable

## 2. Les Boucles

### La boucle `for`
Parcourir une liste ou une plage de nombres.
```bash
for i in 1 2 3; do
    echo "Nombre $i"
done

# Syntaxe C-style
for ((i=0; i<5; i++)); do
    echo $i
done
```

### La boucle `while`
Tant que la condition est vraie.
```bash
compteur=0
while [ $compteur -lt 5 ]; do
    echo "Compteur : $compteur"
    ((compteur++))
done
```

## 3. Le Switch Case
Idéal pour les menus ou les choix multiples.
```bash
case $variable in
    pattern1)
        commandes ;;
    pattern2)
        commandes ;;
    *)
        defaut ;;
esac
```

## 4. Exercices
1. **Conditions** : Script qui vérifie si un fichier (dont le nom est passé en argument) existe.
2. **Boucles** : Script qui compte à rebours de 10 à 0 puis affiche "Décollage !".
3. **Menu** : Script qui propose de (1) Afficher la date, (2) Lister les fichiers, (3) Quitter.

---
[Précédent](../02_Variables_et_Types/README.md) | [Suivant : Module 4 - Fonctions](../04_Fonctions/README.md)
