#!/bin/bash

echo "Waiting for all commands to finish..."
echo ""

# -cオプションでパケット送出回数を指定してpingコマンドを実行する
ping -q -c 15 1.1.1.1 &
pid1=$! # $!でプロセスIDを取得する
ping -q -c 10 8.8.8.8 &
pid2=$!
ping -q -c 5 9.9.9.9 &
pid3=$!

# 3つ全てのプロセスが終了するまで待機する
wait $pid1 $pid2 $pid3
echo ""
echo "All commands has been finished successfully."
