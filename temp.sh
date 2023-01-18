#!/bin/bash

# Place your code here
string=$1
Cel="C"
cel="c"
Kel="K"
kel="k"
a=
b=
c=
k= 

case $string in
   *"$Cel"*)
   a=$(echo "${string%C} + 273" | bc)
   echo "${a}K"
   ;;
   *"$Kel"*)
   b=$(echo "${string%K} - 273" |bc)
   echo "${b}C"
   ;;
   *"$cel"*)
   c=$(echo "${string%c} + 273" |bc)
   echo "${c}K"
   ;;
   *"$kel"*)
   k=$(echo "${string%k} + 273" |bc)
   echo "${k}K"
   ;;
esac 
