#!/bin/bash -xve

exec 2> /tmp/setup.log

cd /home/ubuntu/Raspberry Pi Mouse/src/drivers/ 
/sbin/insmod rtmouse.ko

sleep 1

chmod 666 /dev/rt* #wait for the device file to be created
echo 0 > /dev/rtmotoren0 #turn off the motor for safety
