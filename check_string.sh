#!/bin/bash

# Place your code here
string="${*}"

echo "Numbers: $num", "Letters: $letters", "Symbols: $sym"
#for i in "$string
#do
#done
a=$(echo "$string" | tr -dc '0-9' | wc -c)
num=$(echo "${a// /+}" | bc)
b=$(echo "$string" | tr -dc 'A-z' | wc -c)
letters=$(echo "${b// /+}" | bc)
c=$(echo "$string" | tr -dc '[:punct:]' | wc -c)
sym=$(echo "${c// /+}" | bc)
