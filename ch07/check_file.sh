#!/bin/bash

check_file() {
    if [ -f "$1" ] ; then
        return 0 # 通常のファイル
    elif [ -d "$1" ] ; then
        return 1 # ディレクトリー
    else
        return 2 # デバイスファイル
    fi
}

if [ -z "$1" ] ; then
    echo "Usage: $0 file"
    exit 1
fi

check_file "$1"
status=$?
if [ $status = 0 ] ; then
    echo "$1 is a regular file"
elif [ $status = 1 ] ; then
    echo "$1 is a directory"
else
    echo "$1 is a device file"
fi
