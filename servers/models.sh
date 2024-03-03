#!/bin/bash
IFS="
"
echo "const serverModels = {";
for i in [A-Za-z]*; do
  echo -n "'$i': [";
  for m in $(find "$i" -type f|cut -d/ -f2-); do
    echo -n "'$m',";
  done;
  echo "],";
done;
echo "};";
