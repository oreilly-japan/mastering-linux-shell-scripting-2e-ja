#!/bin/bash

# 未定義の変数の参照時にエラーを発生させて終了するようにする
set -u
var="This is variable var."
echo $var
echo $ver # 未定義の変数を参照したためここで終了する
echo $var # ここは実行されない
