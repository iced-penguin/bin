#!/bin/bash

include_files=("transpose")

for file in "${include_files[@]}"; do
  # ファイルが存在したら実行可能にしてシンボリックリンクを貼る
  if [[ -e "$file" ]]; then
    if which "$file" >/dev/null; then
      echo "$file is already installed."
      continue
    else
      chmod 744 "$file"
      ln -s "$(pwd)/$file" /usr/local/bin
      echo "$file installed."
    fi
  fi
done
