function check_cores {
    REQ_CORES=$1
    [ -z $1 ] && REQ_CORES=2
    CPU_CORES=$(grep -c name /proc/cpuinfo)
    if (( CPU_CORES < REQ_CORES  )) ; then
        echo "A minimum of $REQ_CORES cores are required"
        exit 1
    fi
}
