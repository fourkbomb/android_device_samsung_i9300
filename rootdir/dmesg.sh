#!/bin/sh
# loggy.sh.

date=`date +%F_%H-%M-%S`
dmesg > /data/cm14dmesg_$date.txt
cat /proc/kmsg >> /data/cm14dmesg_$date.txt
