touch /data/logger/kernel.log 
chmod 0666 /data/logger/kernel.log 
echo "---------------------------------------------------------------" >> /data/logger/kernel.log
echo "kernel: start logging.........................................." >> /data/logger/kernel.log
echo "---------------------------------------------------------------" >> /data/logger/kernel.log
/system/bin/kernellog -f /data/logger/kernel.log -n 4 -r 4096 -t 1000

