#!/bin/bash

#Memory Check
free -m | awk '$1 == "Mem:" {printf "Date: " strftime() " | Total : "$2 "MB | Current Usage: " $3 "MB | Health: %.2f %%\n", ($3/$2)*100}'

#CPU Check
uptime | awk -F"load average:" '{print "Date: " strftime() " | CPU Load:" $2}'
