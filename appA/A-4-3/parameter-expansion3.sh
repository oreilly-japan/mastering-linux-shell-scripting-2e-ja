#!/bin/bash

str="rock paper scissors"
echo "1: ${str^}" # 先頭のみ大文字に変換
str_upper=${str^^} # 全て大文字に変換
echo "2: $str_upper"
echo "3: ${str_upper,}" # 先頭のみ小文字に変換
echo "4: ${str_upper,,}" # 全て小文字に変換
echo "5: ${str^^s}" # 全てのsを大文字に
str_per=${str^^[per]} # 全てのpとeとrを大文字に
echo "6: $str_per"
echo "7: ${str_per~}" # 先頭のみ大文字小文字を反転
echo "8: ${str_per~~}" # 全ての大文字小文字を反転
