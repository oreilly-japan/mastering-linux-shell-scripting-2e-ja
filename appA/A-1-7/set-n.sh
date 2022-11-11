#!/bin/bash

# コマンドを実行せずに文法チェックのみ行う
set -n

# こちらは正しいコード
animals=("cat" "dog" "rat")
for a in "${animals[@]}" ; do
    echo $a
done

# こちらはdoの前のセミコロンが抜けている
animals=("cat" "dog" "rat")
for a in "${animals[@]}" do
    echo $a
done
