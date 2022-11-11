#!/bin/bash

# エラー発生時に終了するようにする
set -e

echo "START 1"
# ||や&&でコマンドをつなげる場合は最後のコマンドが
# エラーにならなければ終了しない
cat /dev/none || true
echo "FINISH 1" # エラーになっても実行が継続される

echo ----------------------------------------

echo "START 2"
# if文で使用されたコマンドのエラーでは終了しない
if cat /dev/none ; then
    echo "SUCCESS 2"
fi
echo "FINISH 2" # エラーになっても実行が継続される

echo ----------------------------------------

# if文で使用された関数内のエラーでは終了しない
myfunc () {
    cat /dev/none
}

echo "START 3"
if myfunc ; then
    echo "SUCCESS 3"
fi
echo "FINISH 3" # エラーになっても実行が継続される

echo ----------------------------------------

echo "START 4"
# catはエラーになるがechoが成功するため実行は継続される
echo "$(cat /dev/none)"
echo "FINISH 4"

echo ----------------------------------------

echo "START 5"
# コマンド置換の結果を代入する場合はエラーで終了する
content=$(cat /dev/none)
echo "FINISH 5" # ここは実行されない
