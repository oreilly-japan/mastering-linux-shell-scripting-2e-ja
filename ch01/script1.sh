#!/bin/bash
# 第1のスクリプト
name="Mokhtar"
export name  # 他のプロセスからこの変数にアクセスできるようになります
./script2.sh
echo $name
