#!/bin/bash
#パラメーター置換を使ってデフォルト値を指定します
name=${1-"Anonymous"}
echo "Hello $name"
exit 0
