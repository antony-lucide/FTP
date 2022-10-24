#!/bin/bash

Fichier_CSV=$1
while IFS="," read -r  Prenom MDP Role 
do
   sudo useradd -m -p "$MDP" "$Prenom" "$Role" "$Role"
if [[ $Role="admin" ]]
then
    sudo usermod -g sudo "$Prenom" "$Nom" "$Role" "$MDP"
fi
done < <(tail -n +2 $Fichier_CSV)


