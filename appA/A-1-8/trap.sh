#!/bin/bash

# ループの回数を表示する。
# loopcountはグローバル変数であるため関数の引数で与えなくても
# 関数内で参照できる。
show_loopcount() {
    echo "loop count: $loopcount"
}

loopcount=0

# このスクリプトを実行中にSIGINTとSIGQUITのシグナルを受信した場合に
# show_loopcount関数を実行するようにtrapコマンドで設定する。
#
# ここでshow_loopcount関数を使うように設定して
# 'echo "loop count: $loopcount"'というコマンドにしていないのは、
# trapコマンドを実行した時点の値(0)が毎回出力されてしまうため。
trap "show_loopcount" INT QUIT

while true
do
    clear
    echo "Choose an item: a, b or c"
    echo "a: Backup"
    echo "b: Display Calendar"
    echo "c: Exit"
    read -sn1
    case "$REPLY" in
        a) tar -czvf $HOME/backup.tgz ${HOME}/bin;;
        b) cal;;
        c) exit 0;;
    esac
    read -n1 -p "Press any key to continue"
    ((loopcount++)) # 算術演算でループの回数をインクリメント
done
