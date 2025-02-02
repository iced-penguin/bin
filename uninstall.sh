#!/bin/bash

include_files=("transpose")

for file in "${include_files[@]}"; do
  # /usr/local/binにシンボリックリンクが存在したら削除
  if [[ -L "/usr/local/bin/$file" ]]; then
    unlink "/usr/local/bin/$file"
    echo "$file uninstalled."
  fi
done
