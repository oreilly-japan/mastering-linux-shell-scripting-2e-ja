#!/bin/bash

echo ""
echo "Waiting for any commands to finish..."
echo ""

# -cオプションでパケット送出回数を指定してpingコマンドを実行する
ping -q -c 15 1.1.1.1 &
pid1=$! # $!でプロセスIDを取得する
ping -q -c 10 8.8.8.8 &
pid2=$!
ping -q -c 5 9.9.9.9 &
pid3=$!

# sortコマンドの-Vオプションでbashのバージョンと5.1の2つの文字列を
# バージョン文字列として新しい順にソートして新しい方を取得する。
newer_ver=$(echo -e "$BASH_VERSION\n5.1" | sort -r -V | head -n 1)

# waitコマンドの-nオプションは指定したいずれかのプロセスが終了するまで待機する。
# 最初に終了したプロセスIDを取得する-pオプションはbash 5.1以降で使用可能。
if [ "$BASH_VERSION" = "$newer_ver" ] ; then
    wait -p pid_finished -n $pid1 $pid2 $pid3

    echo ""

    echo "PID $pid_finished has been finished successfully."
else
    wait -n $pid1 $pid2 $pid3
    echo ""

    echo "One of the commands has been finished successfully."
fi
