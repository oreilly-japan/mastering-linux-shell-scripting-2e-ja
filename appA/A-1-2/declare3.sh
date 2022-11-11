#!/bin/bash

# ro1とro2を読み取り専用として定義
declare -r ro1="This variable is readonly."
readonly ro2="This variable is readonly."

# ro1とro2の値を変更しようとするとエラーが発生する
ro1="1234"
ro2="1234"

# ro1とro2の属性と値を表示
declare -p ro1
declare -p ro2

echo ----------------------------------------

# +r オプションで読み取り専用を解除することはできない
declare +r ro1 ro2

echo ----------------------------------------

myfunc () {
    # local -r でもローカル変数を読み取り専用にできる
    declare -r local_ro1="This variable is readonly."
    local -r local_ro2="This variable is readonly."

    # local_ro1とlocal_ro2の属性と値を表示
    declare -p local_ro1 local_ro2

    # local_ro1とlocal_ro2の値を変更しようとするとエラーが発生する
    local_ro1="1234" # この行でエラーが発生して myfunc から戻る
    local_ro2="1234" # この行は実行されない
}

myfunc

echo ----------------------------------------

# local_ro1とlocal_ro2は関数の外から参照できない
declare -p ro1 ro2 local_ro1 local_ro2
