#!/bin/bash

# paramが未定義またはヌルの場合に文字列valueに展開される
echo "1: ${param:-value}"
echo "1: $param" # paramは未定義のまま

param= # paramをヌルに設定する
# paramが未定義の場合に文字列valueに展開される
echo "2: ${param-value}"
echo "2: $param" # paramはヌルのまま

unset param # paramを未定義にする
# paramが未定義またはヌルの場合に文字列valueに展開され代入される
echo "3: ${param:=value}"
echo "3: $param" # paramにvalueが代入されている

param= # paramをヌルに設定する
# paramが未定義の場合に文字列valueに展開され代入される
echo "4: ${param=value}"
echo "4: $param" # paramはヌルのまま

param="value" # paramをvalueに設定する
# paramが未定義でもヌルでもない場合にnew valueに展開される
echo "5: ${param:+new value}"
echo "5: $param" # paramはvalueのまま

param= # paramをヌルに設定する
# paramが未定義でない場合にnew valueに展開される
echo "6: ${param+new value}"
echo "6: $param" # paramはヌルのまま

param="value" # paramをvalueに設定する
message="undefined variable" # 終了時に表示するメッセージ
# 変数paramが未定義またはヌルの場合に標準エラー出力にmessage
# の内容を出力して終了する
echo "7: ${param:?$message}"
echo "7: $param" # paramはvalueのまま

unset param # paramを未定義にする
message="undefined variable" # 終了時に表示するメッセージ
# paramが未定義の場合に標準エラー出力に変数messageの内容を
# 出力して終了する。
# パラメーター展開時に終了するためechoは実行されない。
echo "8: ${param?$message}"
echo "8: $param" # 上の行で終了するためこの行は実行されない
