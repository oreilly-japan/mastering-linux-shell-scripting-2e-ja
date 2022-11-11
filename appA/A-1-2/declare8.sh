#!/bin/bash

myfunc1 () {
    echo "This is myfunc1 function: VAR=$VAR."
}

myfunc2 () {
    echo "This is myfunc2 function: VAR=$VAR."
}

VAR=1

# myfunc1 の終了時にtrapコマンドで設定したコマンドが実行される
declare -ft myfunc1
trap "echo 'TRACE: Function myfunc1 is called.'" RETURN

myfunc1
((VAR++)) # VAR の値をインクリメント
myfunc1
((VAR++))
myfunc1
((VAR++))

# myfunc2にはtrapコマンドの設定は適用されない
myfunc2
((VAR++))
myfunc2
((VAR++))
myfunc2
