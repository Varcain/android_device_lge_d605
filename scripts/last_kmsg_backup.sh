integer max_count=10
backup_folder=/data/dontpanic
count_file=$backup_folder/next_count

if /system/bin/ls /proc/last_kmsg ; then
    if /system/bin/ls $count_file ; then
        integer count=`/system/bin/cat $count_file`
        count=$count+0
        case $count in
            "" ) count=0
        esac
    else
        count=0
    fi
    echo [[[[ Written $backup_folder/last_kmsg$count $max_count ]]]]
    /system/bin/cat /proc/last_kmsg > $backup_folder/last_kmsg$count
    count=$count+1
    if  (($count>=$max_count)) ; then
        count=0
        echo restart
    fi
    echo $count > $count_file
fi