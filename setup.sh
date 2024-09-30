#!/bin/bash
# ~/binに全てのスクリプトを配置する

if [ ! -d ~/bin ]; then
  mkdir ~/bin
fi

if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
  echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
  source ~/.zshrc
fi

ls | grep -v -e README.md -e setup.sh | while read line; do
  chmod 744 "$line"
  cp "$line" ~/bin
done