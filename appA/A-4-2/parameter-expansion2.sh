#!/bin/bash

str="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
# 文字列の長さを出力
echo "Length: ${#str}"
# 0始まりで10文字目(A)以降を出力
echo "1: ${str:10}"
# Aから5文字を出力
echo "2: ${str:10:5}"
# Aから始まって末尾の3文字を除いたもの(Wまで)を出力
echo "3: ${str:10:-3}"
# 最後の10文字を出力
echo "4: ${str: -10}"
# 最後の10文字の先頭から3文字目(S)までを出力
echo "5: ${str: -10:3}"
# 最後の10文字のうち末尾の3文字を除いたもの(Wまで)を出力
echo "6: ${str: -10:-3}"
