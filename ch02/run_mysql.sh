#!/bin/bash
# Author: @theurbanpenguin
# Web: www.theurbapenguin.com
# MYSQLのユーザー、パスワード、コマンドを入力するよう促すスクリプト
# Last Edited: July 4 2015
read -p "MySQL User: " user_name
read -sp "MySQL Password: " mysql_pwd
echo
read -p "MySQL Command: " mysql_cmd
read -p "MySQL Database: " mysql_db
mysql -u"$user_name" -p$mysql_pwd $mysql_db -Be"$mysql_cmd"
