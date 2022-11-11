#!/bin/bash

declare -l str
str="UPPERCASE STRING"
echo $str # 自動的に小文字に変換されている
declare -p str # strの属性と値を表示
echo ----------------------------------------

declare -u str
str="lowercase string"
echo $str # 自動的に大文字に変換されている
declare -p str # strの属性と値を表示
echo ----------------------------------------

declare -x MYENV1="My new environment variable1"
export MYENV2="My new environment variable2"
env | grep MYENV # どちらも環境変数として設定されている
