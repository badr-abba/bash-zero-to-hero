#!/bin/bash

# Mini-calculateur arithmétique

echo "--- Calculateur Bash ---"

read -p "Entrez le premier nombre (A) : " a
read -p "Entrez le second nombre (B) : " b

# Calculs
add=$((a + b))
sub=$((a - b))
mul=$((a * b))

# Division (attention à la division par zéro)
if [ $b -ne 0 ]; then
    div=$((a / b))
    mod=$((a % b))
else
    div="Impossible (division par 0)"
    mod="N/A"
fi

echo ""
echo "Résultats :"
echo "A + B = $add"
echo "A - B = $sub"
echo "A * B = $mul"
echo "A / B = $div (Quotient)"
echo "A % B = $mod (Reste)"
