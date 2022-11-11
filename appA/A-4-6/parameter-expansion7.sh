#!/bin/bash

# sortコマンドの-Vオプションでbashのバージョンと5.1の2つの文字列を
# バージョン文字列として新しい順にソートして新しい方を取得する。
newer_ver=$(echo -e "$BASH_VERSION\n5.1" | sort -r -V | head -n 1)

# if文内の例はbash 5.1以降で使用可能
if [ "$BASH_VERSION" = "$newer_ver" ] ; then
    str="uppercase"
    echo "${str@U}" # 大文字に変換
    echo ----------------------------------------

    str="uppercase"
    echo "${str@u}" # 先頭の文字を大文字に変換
    echo ----------------------------------------

    str="LOWERCASE"
    echo "${str@L}" # 小文字に変換
    echo ----------------------------------------

    str="string"
    echo "${str@K}" # 単一引用符で囲った形に変換
    echo ----------------------------------------

    # arrayを連想配列として定義
    declare -A array=([car]="red" [ship]="green" [airplane]="blue")
    # 値を二重引用符で囲ってキーと値の一覧に変換
    echo "${array[@]@K}"
    echo ----------------------------------------
else
    echo "This script uses transformations supported by bash 5.1 or later."
fi
