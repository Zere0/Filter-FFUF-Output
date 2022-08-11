#!/bin/bash

cont=0

cat $1 | awk '{print $7}' | sed 's/,//' | sort | uniq > /tmp/filtro.txt

IFS=$'\n' read -d '' -r -a lines < /tmp/filtro.txt

for i in "${lines[@]}"
do
        if [ "$(cat $1 | awk '{print $7}' | sed 's/,//' | grep -o -i -w $i | wc -l)" -gt "3" ]; then sed -i "/Words: $i,/d" $1; fi
done

rm /tmp/filtro.txt
