#!/bin/bash
pattern="*day"

case "$1" in
    '$pattern')
        echo '$patternという文字列にマッチします（変数の展開が行われません）。'
    ;;
    "$pattern")
        echo -n "*dayという文字列にマッチします（変数の展開が行われますが*の"
        echo "ワイルドカードは機能しません）。"
    ;;
    $pattern)
        echo -n "任意の長さで末尾がdayで終わる文字列(Sunday、Monday、day等)"
        echo "にマッチします。"
    ;;
    *)
        echo "どれにもマッチしなかった場合です。"
    ;;
esac
