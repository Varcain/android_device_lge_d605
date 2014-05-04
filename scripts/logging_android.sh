timestamp="`cat /data/log/.timestamp`"
buffer="`cat /data/log/.buffer`"
exception_tags="`cat /data/log/.exception_tags`"
filtering_tags="`cat /data/log/.filtering_tags`"
/system/bin/logcat -v logsvc $buffer $exception_tags $filtering_tags >> /data/log/$timestamp.log
