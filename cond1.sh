#!/bin/bash

#IFS=',' read -r -a array <<< "$1"

#Write your code here
sum=0; 
for i in ${@}; 
do
  if (($i%2==0));
  then
  sum=$i+$sum
  fi 
done;
echo $sum |bc
