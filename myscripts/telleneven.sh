#!/bin/bash
for i in {1..100..1};
do 
if [ $((i % 2)) -eq 0 ]; then
  echo $i
  fi
done
