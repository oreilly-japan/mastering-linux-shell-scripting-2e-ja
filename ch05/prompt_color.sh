#!/bin/bash
# ログイン時に歓迎のメッセージをユーザーに表示するスクリプト
# Author: @theurbanpenguin
# Date: 1/1/1971
shopt -s nocasematch  #大文字と小文字の区別をオフにします
read -p "Type color or mono for script output: "
if [[ $REPLY =~ colou?r ]] ; then
    source $HOME/snippets/color
fi
#パラメーターが設定されていない場合はモノクロ表示になります
echo -e "${GREEN}This is $0 $RESET"
shopt -u nocasematch  #大文字と小文字の区別をリセットします
exit 0
