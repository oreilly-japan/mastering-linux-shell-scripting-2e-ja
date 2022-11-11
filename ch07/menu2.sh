#!/bin/bash
# Author: @likegeeks
# Web: likegeeks.com
# 関数を用いたサンプルメニュー
# Last Edited: April 2018

to_lower() {
    input="$1"
    output=$( echo $input | tr [A-Z] [a-z])
    echo $output
}

do_backup() {
    tar -czvf $HOME/backup.tgz ${HOME}/bin
}

show_cal() {
    if [ -x /usr/bin/ncal ] ; then
        command="/usr/bin/ncal -w"
    else
        command="/usr/bin/cal"
    fi
    $command
}

while true
do
    clear
    echo "Choose an item: a, b or c"
    echo "a: Backup"
    echo "b: Display Calendar"
    echo "c: Exit"
    read -sn1
    REPLY=$(to_lower "$REPLY")
    case "$REPLY" in
        a) do_backup;;
        b) show_cal;;
        c) exit 0;;
    esac
    read -n1 -p "Press any key to continue"
done
