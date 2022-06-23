#!/bin/sh

git config --global user.email "vybhav.nca@gmail.com"
git config --global user.name "vybhav2000"
if [ -f ./datefile.txt ]
then 
  echo "$(date)" >> datefile.txt
  git add .
  git commit -m "Added date for $DATE"
  git push origin main
else
  echo "$(date)" > datefile.txt
  git add .
  git commit -m "Added date for $DATE"
  git push origin main
fi
