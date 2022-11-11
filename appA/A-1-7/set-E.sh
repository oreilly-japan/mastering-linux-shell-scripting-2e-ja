#!/bin/bash

myfunc () {
    cat /dev/none # ファイルが存在しないためエラーが発生
}

# エラー発生時に終了するようにする
set -e

# FUNC_ERR_TRAP の値が存在する場合に set -E を実行
if [ -n "$FUNC_ERR_TRAP" ] ; then
    # 関数内でエラーが発生した場合にtrapコマンドで設定した
    # コマンドを実行できるようにする
    set -E
fi

# エラー発生時に実行されるコマンドを設定
trap "echo 'An error occurred.'" ERR

myfunc
