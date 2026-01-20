#!/bin/bash

# Calculatrice modulaire avec fonctions

# Fonctions d'opération
addition() {
    echo $(($1 + $2))
}

soustraction() {
    echo $(($1 - $2))
}

multiplication() {
    echo $(($1 * $2))
}

division() {
    if [ $2 -eq 0 ]; then
        echo "Erreur"
    else
        echo $(($1 / $2))
    fi
}

# Logique principale
echo "--- Super Calculatrice ---"
read -p "Nombre 1 : " n1
read -p "Nombre 2 : " n2
read -p "Opération (+, -, *, /) : " op

case $op in
    +)
        res=$(addition $n1 $n2)
        ;;
    -)
        res=$(soustraction $n1 $n2)
        ;;
    \*)
        res=$(multiplication $n1 $n2)
        ;;
    /)
        res=$(division $n1 $n2)
        ;;
    *)
        echo "Opérateur invalide."
        exit 1
        ;;
esac

echo "Résultat : $res"
