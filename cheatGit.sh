#!/usr/bin/bash

cd ~/scripts/cheatGit

ARRAY_OF_ITERATION_VALUES=(0 0 0 3 5 6 9 11 12)
NUM_OF_ITERATIONS=$(($RANDOM % 4))

echo ${ARRAY_OF_ITERATION_VALUES[$(()$RANDOM % 8)]}

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
