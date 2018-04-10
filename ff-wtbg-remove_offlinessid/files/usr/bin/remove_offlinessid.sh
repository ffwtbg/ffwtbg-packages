#!/bin/sh 

net=$(uci show wireless.client_radio0_offline 2>&1)
#net="uci: Entry not found" 


if [ "$net" != "uci: Entry not found" ];
then
	logger -s -t "offline_ssidremover" -p 5 "entferne offline ssid"
	uci delete wireless.client_radio0_offline
	uci commit wireless && wifi
fi
	logger -s -t "offline_ssidremover" -p 5 "fertig"

