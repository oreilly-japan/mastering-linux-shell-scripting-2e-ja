#!/bin/bash
# Author: @theurbanpenguin
# Web: www.theurbapenguin.com
# バックアップするファイルと場所を入力するよう促すスクリプト
# ファイルはユーザーの$HOME/binディレクトリーから検索され、$HOME内の
# ディレクトリーだけにバックアップできます。
# Last Edited: July 4 2015
read -p "Which file types do you want to backup " file_suffix
read -p "Which directory do you want to backup to " dir_name
# 指定されたディレクトリーが存在していなければ、作成します。
test -d $HOME/$dir_name || mkdir -m 700 $HOME/$dir_name
# findコマンドは、検索基準すなわち.shにマッチするファイルをコピーします。
# -path、-prune、-oオプションは、バックアップディレクトリーをバックアップ
# から除外するためのものです。
find $HOME/bin -path $HOME/$dir_name -prune -o \
 -name "*$file_suffix" -exec cp {} $HOME/$dir_name/ \;
exit 0
