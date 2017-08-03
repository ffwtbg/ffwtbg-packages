#!/bin/sh

echo reboot is running > /tmp/reboot.txt
sleep $(awk 'BEGIN{srand();print int(rand()*7200)}')
touch /etc/banner
reboot
