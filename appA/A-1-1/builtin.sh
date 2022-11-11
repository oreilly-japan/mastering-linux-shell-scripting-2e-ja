#!/bin/bash

cd () {
    builtin cd "$1" # 本来のcdコマンドを実行する
    echo "Working directory has been changed to: $1"
}

cwd=$(pwd)

# cd関数を実行
cd /
cd "$cwd"
