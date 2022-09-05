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

for i in {0..$NUM_OF_ITERATIONS}
  do
    echo $i
    iterate &
    wait
  done

exit 0
