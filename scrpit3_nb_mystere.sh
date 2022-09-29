#!/bin/bash

#Affectation des variables
nombre=0

#Demande la saisie de la borne
read -p "Quel est la borne supérieure [100 par défaut] : " nbborne

#Si le nombre de la borne n'ai pas compris entre 1 & 100 affecter la valeur par défault
if [[ $nbborne -le "1" ]] || [[ $nbborne -gt "100" ]]; then
    nbborne=100
    echo "Valeur invalide, la valeur par défaut 100 à était ajoutée"
fi


#Génération du nombre mystère 
aleatoire=$((RANDOM%$nbborne+1))

#Boucle tant que le nombre saisie est différent du nombre mystère on redemande une saisie
    while [ $nombre -ne $aleatoire ] ; do
    echo -n "Saisissez un nombre entre 1 et $nbborne : " ; read nombre

#Si le nombre saisie est est plus grand que le nombre mystère on redamnde la saisie
        if [ "$nombre" -lt $aleatoire ] ; then
        echo "Le nombre mystère est plus grand que $nombre"
        
#Si le nombre saisie est est plus petit que le nombre mystère on redamnde la saisie
        elif [ "$nombre" -gt $aleatoire ] ; then
        echo "Le nombre mystère est plus petit que $nombre"
        fi
    done

#Afficher le nombre mystère
echo "Bravo, le nombre mystère était $aleatoire !!"
