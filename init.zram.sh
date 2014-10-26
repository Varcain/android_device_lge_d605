#!/system/bin/bash

MB=100

insmod /system/lib/modules/zram.ko

echo $(($MB*1024*1024)) > /sys/block/zram0/disksize

mkswap /dev/zram0
swapon /dev/zram0

sysctl -w vm.swappiness=100
