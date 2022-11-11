#!/bin/bash

# "BASH BASHOPTS BASHPID ..." のように展開される
for v in "${!BASH*}" ; do
    echo "$v"
done

echo ----------------------------------------

# "BASH" "BASHOPTS" "BASHPID" ... のように展開される
for v in "${!BASH@}" ; do
    echo "$v"
done

echo ----------------------------------------

# ${!name} で $BASH_VERSION の値を参照できる
name="BASH_VERSION"
echo "$name: ${!name}"
