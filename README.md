# bin
自作コマンドを置く場所

## 環境構築
TODO

## コマンド

### gitroot
カレントディレクトリがgitリポジトリ内にあるならばgitルートのパスを表示する

gitリポジトリ内でなければエラー終了

`.zshrc`などに関数を定義することで、`gitroot`で取得したパスに移動することができる

サンプル：
```sh
# Gitリポジトリのルートに移動する
# 要件：gitrootがインストールされていること
cdroot() {
  local -r git_root=$(gitroot)
  if [[ -z $git_root ]]; then
    echo "cdroot: you are not in a git repository." >&2
    return 1
  fi
  cd $git_root || return 1
}
```

上の関数はターミナルから`cdroot`で実行できる
