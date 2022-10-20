#!/bin/bash
USAGE="[ q:quit | m:make | b:basic | >:push | <:pull ]"

while true; do

   echo $USAGE
   read type

   if [ "$type" = "q" ]; then
      exit 0

   elif [ "$type" = "m" ]; then
      make clean
      make

   elif [ "$type" = ">" ]; then
      git add .
      git commit -m "."
      git push

   elif [ "$type" = "<" ]; then
      git pull

   fi

echo
done