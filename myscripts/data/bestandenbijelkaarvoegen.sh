#!/bin/bash
filename=$(ls data)
for i in $filename; do
# echo $i
cat data/$i >> allesbijelkaar.txt
done
