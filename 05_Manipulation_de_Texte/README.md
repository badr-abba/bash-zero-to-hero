# Module 5 : Manipulation de Texte et Fichiers

## 🎯 Objectifs du Chapitre
- Maîtriser les redirections et les pipelines (`|`).
- Filtrer et rechercher avec `grep`.
- Extraire des colonnes avec `cut`.
- Trier et dédoubler avec `sort` et `uniq`.
- Introduction à la puissance de `sed` et `awk`.

---

## 1. Redirections et Pipes
- `>` : Redirige la sortie vers un fichier (écrase).
- `>>` : Redirige vers un fichier (ajoute à la fin).
- `|` (Pipe) : Envoie la sortie d'une commande vers l'entrée d'une autre.

```bash
ls -l > liste_fichiers.txt
cat liste_fichiers.txt | wc -l  # Compte les lignes
```

## 2. La Boîte à Outils Essentielle

### `grep` (Global Regular Expression Print)
Recherche des chaînes de caractères.
```bash
grep "Erreur" fichier.log
grep -r "TODO" .  # Récursif
```

### `cut`
Découpe des lignes par délimiteur.
```bash
# Extraire la 1ère colonne du fichier /etc/passwd (délimiteur :)
cut -d: -f1 /etc/passwd
```

### `sort` et `uniq`
Trier et supprimer les doublons (attention : `uniq` ne marche que sur des lignes adjacentes, donc toujours `sort` avant).
```bash
sort noms.txt | uniq
```

## 3. Introduction à `sed` (Stream Editor)
Pour remplacer du texte à la volée.
```bash
# Remplace "foo" par "bar" (première occurrence par ligne)
sed 's/foo/bar/' fichier.txt

# Remplace toutes les occurrences (g = global)
sed 's/foo/bar/g' fichier.txt
```

## 4. Introduction à `awk`
Un langage de traitement de texte complet, idéal pour les données en colonnes.
```bash
# Affiche la 2ème colonne
awk '{print $2}' data.txt

# Affiche les lignes où la 3ème colonne est > 50
awk '$3 > 50 {print $0}' data.txt
```

## 5. Exercices
1. **Analyse de logs** : À partir d'un fichier de log simulé, comptez le nombre d'erreurs "404".
2. **Extraction** : Affichez la liste des utilisateurs du système triée par ordre alphabétique.

---
[Précédent](../04_Fonctions/README.md) | [Suivant : Module 6 - Scripting Avancé](../06_Avance/README.md)
