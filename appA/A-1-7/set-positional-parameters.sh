#!/bin/bash

# 引数があれば1つずつ出力する関数
echo_args () {
    if [ $# -eq 0 ] ; then
        echo "No argument"
    else
        for ((i=1; i <= $#; i++)) ; do
            # ${!i} で $1, $2, $3... を参照できる
            echo "\$$i: ${!i}"
        done
    fi
}

# 引数が無い場合はメッセージを表示して終了する
if [ $# -eq 0 ] ; then
    echo "Usage: $0 arg ..."
    exit 1
fi

echo_args "$@"

echo ----------------------------------------

# 位置パラメータを書き換える
set alpha beta gamma delta epsilon
echo_args "$@"

echo ----------------------------------------

# 設定したい値にハイフンが含まれる場合は -- を使うと
# setコマンドのオプションとして解釈されない
set -- -a -b -c "$4" "$5"
echo_args "$@"

echo ----------------------------------------

# 位置パラメータを未定義にする
set --
echo_args "$@"
