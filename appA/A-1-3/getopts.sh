#!/bin/bash

# 使用方法の説明を表示して終了する関数
usage () {
    echo "Usage: $0 [option ...] [arg ...]"
    cat <<"EOM"
Options:
  -h: Show this help
  -i item: Specify item
  -q quantity: Specify quantity
EOM
    exit 1
}

# 引数があれば1行ずつ出力する関数
echo_args () {
    if [ $# -eq 0 ] ; then
        echo "No argument"
    else
        for ((i=1; i <= $#; i++)) ; do
            # ${!i} で $1, $2, $3... を参照できる
            echo "\$$i: ${!i}"
        done
    fi
}

# 引数を必要とする-iと-qのオプションはiとqの後ろに:を付ける。
# hi:q:の先頭に:を付けると存在しないオプションを指定した場合
# や必要な引数が無い場合にエラーメッセージを表示しなくなる。
while getopts hi:q: option ; do
    case $option in
        h | \?) # -h, -i, -q 以外のオプションを与えた場合は ? となる
            # $OPTINDには次にgetoptsを呼んだ際にオプションとして処理
            # される位置パラメーターのインデックスが入る。例えばオプション
            # に-hのみ指定した場合の$OPTINDの値は2となる。
            echo "-h or invalid option is used (OPTIND: $OPTIND)"
            usage
            ;;
        i)
            echo "-i option is used (OPTIND: $OPTIND)"
            item=$OPTARG # オプションの引数を代入する
            ;;
        q)
            echo "-q option is used (OPTIND: $OPTIND)"
            # quantityを整数としてオプションの引数を代入する
            # 引数が数値以外の場合はquantityの値は0になる
            declare -i quantity=$OPTARG
            ;;
    esac
done

# -iオプションを使用しない場合のデフォルト値を設定する
if [ -z "$item" ] ; then
    item="unknown"
fi

# -qオプションを使用しない場合のデフォルト値を設定する
if [ -z "$quantity" ] ; then
    quantity="unknown"
fi

# itemとquantityの値を表示する
echo "Item: $item"
echo "Quantity: $quantity"

# オプションの後に引数がある場合にオプション部分を位置パラメーターから削除する
shift $((OPTIND-1))
echo_args "$@" # 残りの引数を表示する
