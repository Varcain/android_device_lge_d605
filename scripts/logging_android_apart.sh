timestamp="`cat /data/log/.timestamp`"
exception_tags="`cat /data/log/.exception_tags`"
filtering_tags="`cat /data/log/.filtering_tags`"
/system/bin/logcat -v logsvc -b $1 $exception_tags $filtering_tags >> /data/log/$timestamp.$1.log

