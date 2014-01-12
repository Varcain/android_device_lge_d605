#!/bin/sh

VENDOR=lge
DEVICE=d605

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
mkdir -p $BASE/$DIR
    fi
cp /media/data/d605/images/system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
