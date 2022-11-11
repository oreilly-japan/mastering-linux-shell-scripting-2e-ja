{ record[$9]++ }
END {
    for (r in record)
        print r, " has occurred ", record[r], " times."
}
