#!/bin/bash

VENDOR=lge
DEVICE=d605

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

rm -rf $BASE

grep -v '^#' proprietary-files.txt | grep -v '^$' | while read LINE; do
    read OUT <<< "`dirname $LINE`"
    if [ ! -d $BASE/$OUT ]; then
        mkdir -p $BASE/$OUT > /dev/null
    fi
    cp /mnt/$LINE $BASE/$LINE
done

./setup-makefiles.sh