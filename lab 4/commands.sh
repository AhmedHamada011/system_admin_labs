#!/usr/bin/env bash

#create script to list all files in /var/log every 5 seconds and append the list to /tmp/list.log file
# script in file script.sh

#copy the script to /usr/local/bin directory and set the execution attribute to it
sudo cp -r script.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/script.sh

#create systemd service file to execute the the script as background service
# service in file mySerive.sh

#using cron, schedule a job every 5 minutes to copy /tmp/list.log file to /tmp/list.log.1 and compress the file using zip command
# cronjob
*/5 * * * * cp -r /tmp/list.log /tmp/list.log.1; zip list.log.1.zip list.log.1


