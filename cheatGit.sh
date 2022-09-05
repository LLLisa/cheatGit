#!/usr/bin/bash

cd ~/Code/cheatGit
git pull

NOW=$(date)

echo $NOW >> data.txt

git add .
git commit -m "$NOW"
git push

wait

exit 0
