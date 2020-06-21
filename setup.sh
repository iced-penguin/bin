#!/bin/bash

DIR=$HOME/bin
if [[ $(pwd) != $DIR ]]; then
  echo 'This directory must be placed directly under the home directory (~/bin)'
  exit 1
fi

FILE1=README.md
FILE2=setup.sh
FILES=$(ls | grep -v -e $FILE1 -e $FILE2)

echo "Setting the permissions..."
for FILE in $FILES
do
  chmod 744 $FILE
  echo "$FILE ... done"
done

