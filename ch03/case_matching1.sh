#!/bin/bash

case "$1" in
    orange)
        echo "orangeという文字列にマッチします。"
    ;;
    apple | banana)
        echo "appleまたはbananaという文字列にマッチします。"
    ;;
    "?AT" | "*day")
        echo -n "?ATまたは*dayという文字列にマッチします（引用符で囲むと?と"
        echo "*のワイルドカードは機能しません）。"
    ;;
    ?AT)
        echo "任意の1文字の後にATが続く文字列(CAT、RAT等)にマッチします。"
    ;;
    *day)
        echo -n "任意の長さで末尾がdayで終わる文字列(Sunday、Monday、"
        echo "day等)にマッチします。"
    ;;
    [A-Z]*)
        echo -n "先頭がアルファベットの大文字で始まる任意の長さの文字列に"
        echo "マッチします。"
    ;;
    [!0-9]*)
        echo -n "先頭が数字以外で始まる（!は否定を表します）任意の長さの"
        echo "文字列にマッチします。"
    ;;
    *)
        echo "どれにもマッチしなかった場合です。"
    ;;
esac
