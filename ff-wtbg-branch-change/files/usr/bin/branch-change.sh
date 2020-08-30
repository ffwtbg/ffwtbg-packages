#!/bin/sh 

branch=$(uci get autoupdater.settings.branch)

if [ "$branch" == "snapshot" ]
then
	logger -s -t "branch-change" -p 5 "update branch is now experimental!"
	uci set autoupdater.settings.branch='experimental'
	uci commit autoupdater
else
	logger -s -t "branch-change" -p 5 "update branch is $branch! "
fi

