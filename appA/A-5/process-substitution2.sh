#!/bin/bash

# teeコマンドはパイプで受け取った入力を引数に指定されたファイルに
# 出力しつつ標準出力にも出力する
cat /etc/shells | tee >(grep /usr/bin > filtered.txt) \
| sort > sorted.txt
