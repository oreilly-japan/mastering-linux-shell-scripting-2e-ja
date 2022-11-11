#!/bin/bash

echo "START 1"
# ファイルが存在しないためここでエラーが発生
cat /dev/none
echo "FINISH 1"

echo ----------------------------------------

# エラー発生時に終了するようにする
set -e

echo "START 2"
# ファイルが存在しないためここでエラーが発生
cat /dev/none
echo "FINISH 2" # ここは実行されない
