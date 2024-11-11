#!/bin/bash

while read -r p; do # een manier om door een bestand heen te loopen
				name=$(echo "$p" | awk 'BEGIN {FS=","} {print $2}') # selecteer het tweede veld (komma-gescheiden)
	name=$(echo "$name" | awk 'BEGIN {FS=" "} {print $1 "_" $2}') # scheid de voor en achternaam met een _
	echo "$p" > "data/$name.txt" # Schrijf de regel naar een bestand
done < "data.txt"

