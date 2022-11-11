#!/bin/bash

# 変数名とその値の文字列をタブ区切りで出力
printf "%s\t%s\n" "BASH_VERSION" $BASH_VERSION

# echo -e と同様にバックスラッシュによるエスケープ文字を
# 解釈して出力する
printf "%b" "BASH_VERSION\t$BASH_VERSION\n"

# プレースホルダの数よりも引数が多い場合は全ての引数を
# 処理するまで出力を繰り返すため、red、green、blueが
# 1行ずつ出力される
printf "%s\n" "red" "green" "blue"

# 引用符やスペース、バックスラッシュをエスケープさせて、
# 出力した文字列をシェルの入力として使用できるようにする
printf "%q\n" "'red green\tblue'"

# 整数を出力
printf "%d\n" 10000

# 8桁の右揃えで出力
printf "%8d\n" 10000

# 8桁の右揃えで左に0を付加して出力
printf "%08d\n" 10000

# 10進数を8進数で出力
printf "%o\n" 511

# 10進数を16進数(小文字)で出力
printf "%x\n" 511

# 10進数を16進数(大文字)で出力
printf "%X\n" 511

# 小数を出力
printf "%f\n" 10.112233445566778899

# 小数点以下を4桁で出力
printf "%.4f\n" 10.112233445566778899

# 16桁の右揃えで小数点以下を8桁で出力
printf "%16.8f\n" 10.112233445566778899

# "\"と"%"の文字をエスケープして出力
printf "C:\\Windows\t%%APPDATA%%\n"

# 16進数で表した文字列"ABCD"を出力
printf "\x41\x42\x43\x44\n"

# Unicodeコードポイントで表した文字列"シェル"を出力
printf "\u30b7\u30a7\u30eb\n"

# %(...)Tの中にstrftime関数のフォーマット文字列を
# 使って現在の日付(%F)と時刻(%T)を出力
printf "%(%F %T)T\n"

# 日本時間(UTC+9)の2000-01-01 00:00:00を表示する。
# 引数の数値はUNIXタイムスタンプ(UTCの1970年1月1日
# 午前0時0分0秒からの閏秒を除外した経過秒数)
printf "%(%F %T)T\n" 946652400

# -vオプションで指定した変数に代入する
printf -v string "hostname: %s\nuser: %s\n" $(hostname) $(whoami)
echo $string
