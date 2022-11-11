#!/bin/bash
myarr=(one two three four five)
unset myarr[1] # 2番目の要素が削除されます
unset myarr    # すべての要素が削除されます
