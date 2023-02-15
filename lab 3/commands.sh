#!/usr/bin/env bash

#create users called itiuser1, itiuser2
sudo useradd itiuser1
sudo useradd itiuser2

#create group called os_team
sudo groupadd os_team

#create directory called os_team_workspace
mkdir os_team_workspace

#assign os_team group to the directory os_team_workspaceand change mode to setgid (hint use sudo) 
sudo chgrp os_team os_team_workspace
sudo chmod g+s os_team_workspace

#add users itituser1 and itituser2 to os_teamgroup
sudo usermod -a itiuser1  -G os_team
sudo usermod -a itiuser2  -G os_team

#list directory permissions and send screenshot.
# sended in reop

#send screenshot of all processes in tree mod
# sended into file pstree.txt

#execute command tail -f /var/log/syslog
tail -f /var/log/syslog

#find the process id PID of tail process then kill it using kill command
ps -aux | grep tail
kill 331254 #number is pid

	

