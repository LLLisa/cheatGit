#!/usr/bin/bash

cd ~/Code/cheatGit

function iteration {
  git pull

  NOW=$(date)

  echo $NOW >> data.txt

  git add .
  git commit -m "$NOW"
  git push

  wait
}

iteration

exit 0
