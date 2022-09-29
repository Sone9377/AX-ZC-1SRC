#!/bin/bash

#initialisation des variables
prime_1=0
n=1000000

#Creation de la bouche for  qui permet  d'afficher 
#les nombres premiers

for((i=3;i<=n;))
do
  for((j=i-1;j>=2;))
  do
    if [  `expr $i % $j` -ne 0 ] ; then
      prime_1=1
    else
      prime_1=0
      break
    fi
    j=`expr $j - 1`
  done
  if [ $prime_1 -eq 1 ] ; then
    echo $i
  fi
  i=`expr $i + 1`
done
