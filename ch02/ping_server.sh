#!/bin/bash
# Author: @theurbanpenguin
# Web: www.theurbapenguin.com
# サーバーにpingを送るスクリプト
# Last Edited: July 4 2015
read -p "Which server should be pinged " server_addr
ping -c3 $server_addr 2>&1 > /dev/null || echo "Server Dead"
