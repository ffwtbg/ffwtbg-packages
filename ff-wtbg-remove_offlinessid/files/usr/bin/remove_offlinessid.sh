#!/bin/sh 

net=$(uci show wireless.client_radio0_offline 2>&1)
#net="uci: Entry not found" 


if [ "$net" != "uci: Entry not found" ];
then
	logger -s -t "entferne offline ssid" -p 5
	uci delete wireless.client_radio0_offline
	uci commit wireless && wifi
fi
	logger -s -t "fertig" -p 5

