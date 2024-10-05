#!/bin/bash

# /usr/local/bin にシンボリックリンクを貼る
ls | grep -v -e README.md -e setup.sh | while read line; do
  chmod 744 "$line"
  ln -s "$(pwd)/$line" /usr/local/bin
done