#!/bin/bash

myfunc () {
    # ローカル変数として定義
    declare str1="This is local variable."
    # グローバル変数として定義
    declare -g str2="This is global variable."
    declare -p str1 # str1の属性と値を表示
    declare -p str2 # str2の属性と値を表示
}

myfunc

declare -p str1 # str1の値は関数の外から参照できない
declare -p str2 # str2の値は関数の外から参照できる

echo ----------------------------------------

echo -n "Function name: "
declare -F myfunc # 関数名を表示
echo "Function definition of myfunc:"
declare -f myfunc # 関数の定義を表示
