#!/bin/bash
mydir=/home/mydir
name="mokhtar"
if [ -d "$mydir" ] && [ -n "$name" ]; then
    echo "ディレクトリーは存在しており、nameの長さもゼロではありません"
else
    echo "どちらかのテストが失敗しました"
fi
