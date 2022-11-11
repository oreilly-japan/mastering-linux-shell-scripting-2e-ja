#!/bin/bash

# echo "Here string" | tr [:lower:] [:upper:] と同様
tr [:lower:] [:upper:] <<< "Here string"
echo ----------------------------------------

# 複数行の入力を与える場合
tr [:lower:] [:upper:] <<< "Here
string"
echo ----------------------------------------

# 変数の値を参照する場合
str="Here string"
tr [:lower:] [:upper:] <<< "$str"
echo ----------------------------------------

# 変数として展開したくない場合は単一引用符で囲む
tr [:lower:] [:upper:] <<< '$str'
echo ----------------------------------------

# コマンド置換を使う場合
tr [:lower:] [:upper:] <<< "Hostname: $(hostname)"
echo ----------------------------------------

# readコマンドの入力として与える場合
read -a color <<< "red green blue"
echo ${color[0]}
echo ${color[1]}
echo ${color[2]}
echo ----------------------------------------

# echoコマンドとパイプを使用する場合、パイプで実行するread
# コマンドは別プロセスのサブシェルで実行されるため、read
# コマンドで配列colorに代入された値は参照できない
unset color
echo "red green blue" | read -a color
echo ${color[0]}
echo ${color[1]}
echo ${color[2]}
