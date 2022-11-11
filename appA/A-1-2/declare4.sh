#!/bin/bash

# arrayを配列として定義
declare -a array=("car" "ship" "airplane")

# arrayの各要素を表示
echo ${array[0]}
echo ${array[1]}
echo ${array[2]}

echo ----------------------------------------

# arrayの各要素を変更
array[0]="red"
array[1]="green"
array[2]="blue"

# "${array[@]}" は "red" "green" "blue" となる
for c in "${array[@]}" ; do
    echo $c
done

echo ----------------------------------------

# "${array[*]}" は "red green blue" となる
for c in "${array[*]}" ; do
    echo $c
done

echo ----------------------------------------

# "${!array[@]}" は "0" "1" "2" となる
for c in "${!array[@]}" ; do
    echo $c
done

echo ----------------------------------------

# "${!array[*]}" は "0 1 2" となる
for c in "${!array[*]}" ; do
    echo $c
done

echo ----------------------------------------

# arrayの要素の数を表示
echo "Number of elements: ${#array[@]}"
# arrayの属性と値を表示
declare -p array
