#!/bin/bash
IFS="
"
echo "const serverModels = {";
for i in [A-Za-z]*; do
  echo -n "'$i': [";
  for m in $(find "$i/model.dae" "$i/model" -type f 2>/dev/null|cut -d/ -f2-); do
    echo -n "'$m',";
  done;
  echo "],";
done;
echo "};";
