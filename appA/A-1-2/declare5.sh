#!/bin/bash

# arrayを連想配列として定義
declare -A array=([car]="red" [ship]="green" [airplane]="blue")

# arrayの各要素を表示
echo ${array["car"]}
echo ${array["ship"]}
echo ${array["airplane"]}

echo ----------------------------------------

# arrayの各要素を変更
array["car"]="orange"
array["ship"]="yellow"
array["airplane"]="purple"

# "${array[@]}" は "yellow" "purple" "orange" となる
for c in "${array[@]}" ; do
    echo $c
done

echo ----------------------------------------

# "${array[*]}" は "yellow purple orange" となる
for c in "${array[*]}" ; do
    echo $c
done

echo ----------------------------------------

# "${!array[@]}" は "ship" "airplane" "car" となる
for c in "${!array[@]}" ; do
    echo $c
done

echo ----------------------------------------

# "${!array[*]}" は "ship airplane car" となる
for c in "${!array[*]}" ; do
    echo $c
done

echo ----------------------------------------

# arrayの要素の数を表示
echo "Number of elements: ${#array[@]}"
# arrayの属性と値を表示
declare -p array
