#!/bin/bash
mydir=/home/mydir
name="mokhtar"
if [ -d "$mydir" ] || [ -n "$name" ]; then
    echo "どちらかまたは両方のテストが成功しました"
else
    echo "どちらのテストも失敗しました"
fi
