#!/bin/bash

str="east"

myfunc1 () {
    # 引数として渡された変数(str)をvarとして参照
    declare -n var="$1"
    var="west" # varの値を変更
}

myfunc1 str # 変数名を引数として渡す
echo $str # 値が west に書き換わっている
echo ----------------------------------------

declare -A array=([car]="red" [ship]="green" [airplane]="blue")

myfunc2 () {
    # 引数として渡された変数(array)をvarとして参照
    declare -n var="$1"
    var["bike"]="black" # 値を追加
}

myfunc2 array # 変数名を引数として渡す
echo ${array["bike"]} # array["bike"]="black" の値が追加されている
declare -p array # arrayの属性と値を表示
