#!/usr/bin/env bash
# create script to list all files in /var/log every 5 seconds and append the list to /tmp/list.log file
while true
do
	ls /var/log >> /tmp/list.log
	sleep 5
done
