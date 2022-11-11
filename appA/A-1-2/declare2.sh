#!/bin/bash

declare -i i=100 # 整数として定義
i=$i+100 # 算術演算が行われて値は200となる
echo $i
i=$i*10 # 算術演算が行われて値は2000となる
echo $i
i=0xff # 16進数で255
echo $i
i=0100 # 8進数で64
echo $i
i="ABC" # 文字列を設定すると値は0となる
echo $i
declare -p i # iの属性と値を表示

echo ----------------------------------------

declare +i i=100 # 整数の属性を無効にする
i=$i+100 # 文字列として扱われる
echo $i
declare -p i
