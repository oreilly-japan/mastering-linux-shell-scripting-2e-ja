#!/bin/bash
mydir=/home/mydir
if [ -d "$mydir" ]
then
    echo "$mydir というディレクトリーは存在しています"
else
    echo "$mydir というディレクトリーは見つかりません"
fi
