#!/bin/bash

to_lower()
{
    input="$1"
    output=$( echo $input | tr [A-Z] [a-z])
    echo $output
}

while true
do
    read -p "Enter c to continue or q to exit: "
    REPLY=$(to_lower "$REPLY")
    if [ $REPLY = "q" ] ; then
        break
    fi
done
echo "Finished"
