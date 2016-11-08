#!/bin/sh

echo reboot is running > /tmp/reboot.txt
sleep $(awk 'BEGIN{srand();print int(rand()*10800)}')
reboot
