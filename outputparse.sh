#!/bin/bash -eu

while read -r nevra; do
  [[ "$nevra" == *.src || "$nevra" == *.nosrc ]] && type_="source" || type_="binary"
  name=${nevra%-*-*}
  #echo "$nevra"
  echo "$name"
done