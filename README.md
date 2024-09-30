# bin
自作コマンドを置く場所

## 環境構築

```
./setup.sh
```

## コマンド

### gitroot
カレントディレクトリがgitリポジトリ内にあるならばgitルートのパスを表示する

gitリポジトリ内でなければエラー終了

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
