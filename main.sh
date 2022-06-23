#!/bin/sh

DATE= $(date)
if [ -f ./datefile.txt ]
then 
  echo "$DATE" >> datefile.txt
  git add .
  git commit -m "Added date for $DATE"
  git push origin main
else
  echo "$DATE" > datefile.txt
  git add .
  git commit -m "Added date for $DATE"
  git push origin main
fi
