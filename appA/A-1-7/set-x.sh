#!/bin/bash

# 実行したコマンドとその引数を表示する
set -x

# スクリプトのファイル名と引数を表示する
if [ $# -ge 1 ] ; then
    echo "You are using $(basename $0)"
    echo "Hello $*"
    exit 0
else
    echo "Usage: $0 arg ..."
fi

echo "Please set argument and try again."
