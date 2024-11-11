#!/bin/bash

currentex=$1;  # Search  for extension
newex=$2;      # new extension
isfilethere=$(ls *.$currentex 2>/dev/null | wc -l) # check if file with extension in argument 1 extists

if [ "$#" -eq "0" ]
  then
    echo "No arguments supplied 1:search for extention 2:replace with extension"; 
    echo "For example: veranderextvannaar txt md"
    else
      if [ "$isfilethere" != "0" ]; then # check if file with extension in argument 1 extists
      for file in *.$currentex;
          do 
            ex="${file##*.}";    # This retrieves the file extension
            ne=$(echo "$file" | sed -e "s|$ex|$newex|g"); # Replaces current with the new one
            mv -T "$file" "$ne";
            echo renamed $file to $ne;
          done;
      else
        echo "file(S) with extension in argument 1 not found"
      fi
fi
