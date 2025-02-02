# bin
自作コマンドを置く場所

## インストール

```
./install.sh
```

## アンインストール

```
./uninstall.sh
```

## コマンド

### gitroot
カレントディレクトリがgitリポジトリ内にあるならばgitルートのパスを表示する。

gitリポジトリ内でなければエラー終了。

#### 使用例

`gitroot`で取得したパスに移動するzsh関数

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

### transpose

列を行に、行を列に転置するコマンド。

どちらの変換を実行するかは自動的に決定される。