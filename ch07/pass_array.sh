#!/bin/bash
myfunc() {
    arr=("$@")
    echo "The array from inside the function: ${arr[*]}"
}

test_arr=(1 2 3)
echo "The original array is: ${test_arr[*]}"
myfunc "${test_arr[@]}"
