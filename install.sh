#!/bin/bash

include_files=("gitroot")

for file in "${include_files[@]}"; do
  # ファイルが存在したら実行可能にしてシンボリックリンクを貼る
  if [[ -e "$file" ]]; then
    chmod 744 "$file"
    ln -s "$(pwd)/$file" /usr/local/bin
    echo "$file installed."
  fi
done