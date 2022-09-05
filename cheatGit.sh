#!/usr/bin/bash

cd ~/Code/cheatGit

NUM_OF_ITERATIONS=$(($RANDOM % 4))
echo $NUM_OF_ITERATIONS

function iterate {
  git pull

  NOW=$(date)

  echo "$NOW (x $NUM_OF_ITERATIONS)" >> data.txt

  git add .
  git commit -m "$NOW (x $NUM_OF_ITERATIONS)"
  git push
}

for ((i = 0; i <$NUM_OF_ITERATIONS ; i++ )); do
    iterate 
  done

exit 0
