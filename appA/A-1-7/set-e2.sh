#!/bin/bash

# エラー発生時に終了するようにする
set -e

str="melon"
[ "$str" = "melon" ]
echo "$str"

str="grape"
[ "$str" = "melon" ] # 条件が偽になるためここで終了する
echo "$str" # ここは実行されない
