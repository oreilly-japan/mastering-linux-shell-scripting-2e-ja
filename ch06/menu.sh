#!/bin/bash
# Author: @theurbanpenguin
# Web: www.theurbapenguin.com
# サンプルメニュー
# Last Edited: August 2015

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
done


