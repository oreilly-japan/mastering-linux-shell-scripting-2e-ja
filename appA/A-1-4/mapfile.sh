#!/bin/bash

# /etc/shellsの内容を行番号付きで表示する
cat -n /etc/shells
echo ----------------------------------------

# /etc/shellsの各行を配列linesに代入する
mapfile lines < /etc/shells
declare -p lines
echo ----------------------------------------

# -tオプションは末尾の改行を除去する
mapfile -t lines < /etc/shells
declare -p lines
echo ----------------------------------------

# -sオプションは指定した行数をスキップする
mapfile -s 2 -t lines < /etc/shells
declare -p lines
echo ----------------------------------------

# -nオプションは指定した行数を読み込む
mapfile -n 2 -t lines < /etc/shells
declare -p lines
echo ----------------------------------------

# -dオプションで区切り文字を改行からスペースに変更する
mapfile -d " " lines < /etc/shells
declare -p lines
