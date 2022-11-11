#!/bin/bash

set -o errexit # set -e と同じ
# set -o noglob # set -f と同じ
# set -o noexec # set -n と同じ
# set -o nounset # set -u と同じ
# set -o verbose # set -v と同じ
# set -o xtrace # set -x と同じ

echo "START 1"
# 名前解決できないホスト名のためcurlコマンドはエラーになるが
# パイプの最後のwcコマンドが成功するため終了しない
curl --no-progress-meter https://no-such-hostname/ | wc -l
echo "FINISH 1"
echo ----------------------------------------

# パイプの途中でエラーが発生した場合でも終了できるようにする
set -o pipefail

echo "START 2"
curl --no-progress-meter https://no-such-hostname/ | wc -l
echo "FINISH 2" # curlコマンドがエラーになるためここは実行されない
