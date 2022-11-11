#!/bin/bash
# Author: @theurbanpenguin
# Web: www.theurbapenguin.com
# SSH接続のための情報を入力するスクリプト
# Last Edited: July 4 2015
read -p "Which server do you want to connect to: " server_name
read -p "Which username do you want to use: " user_name
ssh ${user_name}@$server_name
