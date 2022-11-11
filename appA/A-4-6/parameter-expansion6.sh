#!/bin/bash

# intを整数として定義
declare -i int=100
# array1を配列として定義
declare -a array1=("car" "ship" "airplane")
# array2を連想配列として定義
declare -A array2=([car]="red" [ship]="green" [airplane]="blue")
# 変数の型(declareコマンドのオプションの文字)に変換
echo "Attribute of int: ${int@a}"
echo "Attribute of array1: ${array1@a}"
echo "Attribute of array2: ${array2@a}"
# 変数の定義に変換
echo "Definition of int: ${int@A}"
echo "Definition of array1: ${array1[@]@A}"
echo "Definition of array2: ${array2[@]@A}"
echo ----------------------------------------

str="red\tgreen\tblue"
# echo -e と同様にバックスラッシュによるエスケープ文字を解釈した形に変換
echo "${str@E}"
echo ----------------------------------------

str="username: \u, current working directory: \w"
# bashのプロンプトで使用可能なエスケープ文字を解釈した形に変換
echo "${str@P}"
echo ----------------------------------------

# arrayを連想配列として定義
declare -A array=([car]="red" [ship]="green" [airplane]="blue")
# 単一引用符で囲った形に変換
echo "${array[@]@Q}"
echo ----------------------------------------
