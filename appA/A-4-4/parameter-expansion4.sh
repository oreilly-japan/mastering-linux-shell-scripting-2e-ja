#!/bin/bash

str="/usr/share/bash-completion/completions"
# 左からマッチして最短マッチで一番左の/までが削除される
echo "1: ${str#*/}"
# 左からマッチして最長マッチで一番右の/までが削除される
echo "2: ${str##*/}"
# 右からマッチして最短マッチで一番右の/までが削除される
echo "3: ${str%/*}"
# 右からマッチして最長マッチで一番左の/までが削除される
echo "4: ${str%%/*}"

# 左からマッチしてcompletionをexampleに置換する(1回のみ)
echo "5: ${str/completion/example}"
# 左からマッチしてcompletionをexampleに置換する(複数回)
echo "6: ${str//completion/example}"
# 文字列の先頭が/usrである場合にexampleに置換
echo "7: ${str/#\/usr/example}"
# 文字列の末尾がcompletionsである場合にexampleに置換
echo "8: ${str/%completions/example}"
