#!/bin/sh

model=$(lua -e 'print(require("platform_info").get_image_name())') # spukt routermodell aus
logger -s -t "ffwtbg-autoreboot" -p 5 "router-Modell: $model"

revar=$(cat dailyrebootlist.txt |grep $model)

if [ -z "$revar" ];
	then
	logger -s -t "ffwtbg-autoreboot" -p 5 "weeklyreboot"
	if [ "$(date +%u)" -eq "3" ];
	then
		upgrade_started='/tmp/autoupdate.lock'
		if [ -f $upgrade_started ] ; then
 			 logger -s -t "gluon-weeklyreboot" -p 5 "Autoupdate läuft! Aborting"
  			exit 2
		fi
   		logger -s -t "ffwtbg-autoreboot" -p 5 "reboot sheduled today"
		sleep $(awk 'BEGIN{srand();print int(rand()*7200)}')
		touch /etc/banner
		reboot
	fi
else
	upgrade_started='/tmp/autoupdate.lock'
	if [ -f $upgrade_started ] ; 
	then
		logger -s -t "gluon-weeklyreboot" -p 5 "Autoupdate läuft! Aborting"
		exit 2
	fi
		logger -s -t "ffwtbg-autoreboot" -p 5 "reboot sheduled today"
		sleep $(awk 'BEGIN{srand();print int(rand()*7200)}')
		touch /etc/banner
		reboot
fi



