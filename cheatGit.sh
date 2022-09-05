#!/usr/bin/bash

cd ~/Code/cheatGit

NUM_OF_ITERATIONS=$(($RANDOM % 3 + 1))
echo $NUM_OF_ITERATIONS

function iterate {
  git pull

  NOW=$(date)

  echo $NOW >> data.txt

  git add .
  git commit -m "$NOW (x $NUM_OF_ITERATIONS)"
  git push
}

for ((i = 0; i <=$NUM_OF_ITERATIONS ; i++ )); do
    echo $i
    iterate 
    # wait
  done

exit 0
