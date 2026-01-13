# Module 1 : Introduction au Shell et Bash

## 🎯 Objectifs du Chapitre
- Comprendre ce qu'est le Shell et le Terminal.
- Vérifier votre environnement de travail.
- Écrire votre premier script Bash.
- Comprendre les permissions d'exécution.

---

## 1. Qu'est-ce que Bash ?
**Bash** (Bourne Again SHell) est un interpréteur de commandes pour les systèmes d'exploitation de type Unix (Linux, macOS). C'est à la fois :
1. Une **interface** pour interagir avec le système d'exploitation via des commandes.
2. Un **langage de script** puissant pour automatiser des tâches.

## 2. Le Terminal
Le terminal est la fenêtre dans laquelle vous tapez vos commandes.
- **Prompt** : C'est l'indicateur qui attend votre commande (souvent `user@hôte:~$`).

## 3. Votre Premier Script : "Hello World"
Par convention, le premier programme qu'on écrit affiche simplement un message.

### Structure d'un script
Créez un fichier nommé `hello.sh` :

```bash
#!/bin/bash
# Ceci est un commentaire
echo "Bonjour, monde !"
echo "Bienvenue dans le cours Bash."
```

#### Le Shebang (`#!/bin/bash`)
La première ligne est cruciale. Elle indique au système quel interpréteur utiliser pour exécuter le fichier. Ici, on utilise `/bin/bash`.

## 4. Exécuter le Script
Pour exécuter votre script, vous avez deux méthodes :

### Méthode 1 : Avec l'interpréteur explicite
```bash
bash hello.sh
```

### Méthode 2 : En rendant le fichier exécutable (Recommandé)
Par défaut, un nouveau fichier n'est pas exécutable pour des raisons de sécurité.
Il faut changer ses permissions avec la commande `chmod` (Change Mode).

1. Rendre exécutable :
   ```bash
   chmod +x hello.sh
   # +x signifie "ajouter (+)" le droit d'exécution ("x")
   ```

2. Lancer le script :
   ```bash
   ./hello.sh
   # ./ signifie "dans le répertoire courant"
   ```

## 5. Exercices
1. Créez un script `infos.sh` qui affiche :
   - Le message "Analyse du système..."
   - La date actuelle (commande `date`).
   - Le chemin du répertoire actuel (commande `pwd`).

---
[Suivant : Module 2 - Variables et Types](../02_Variables_et_Types/README.md)
