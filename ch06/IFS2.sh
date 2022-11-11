#!/bin/bash
file="file1.txt"
IFS=$'\n'   #IFSを改行に変更します
for var in $(cat $file)
do
    echo " $var"
done
