#!/bin/bash

# ユーザーに入力を求めるプロンプトの内容（選択肢の後に表示される）
PS3="Choose a file or directory (enter q to quit): "

# inの後に選択肢を記載する。
# ここでは*を使用しているためカレントディレクトリのファイル名の
# 一覧に展開されてそれらが選択肢として表示される。
#
# ユーザが数字を入力して選択を行うと数字に該当する選択肢の内容
# （ここではファイル名）が変数fileに代入される。
select file in *
do
    # ユーザーが入力した数字等の文字列は変数REPLYに代入される。
    # ここではqが入力されたら終了する。
    if [ "$REPLY" = "q" ] ; then
        exit 0
    fi
    echo ""
    stat "$file" # 選択されたファイルにstatコマンドを実行する
    echo ""
done
