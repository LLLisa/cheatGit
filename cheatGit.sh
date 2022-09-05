#!/usr/bin/bash

cd ~/Code/cheatGit

NUM_OF_ITERATIONS=$(($RANDOM % 6))
echo $NUM_OF_ITERATIONS

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
