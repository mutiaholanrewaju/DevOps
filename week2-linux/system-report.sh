#!/bin/bash
#Mutiah Script

#Display disk space usage
current_date_time=$(date +"%A %d %B, %Y %H:%M")
echo "Mutiah's system report as of $current_date_time" > /tmp/mutiah-system-report.txt
df -h >> /tmp/mutiah-system-report.txt
#Show memory usage
free  -h  >> /tmp/mutiah-system-report.txt
#information about system processes that runs once and in batch mode
top -n 1 -b >> /tmp/mutiah-system-report.txt

#Send report to my mail
#{
# echo "This is my system report for your reference."
# } | mail -s "Mutiah System Report" -a /tmp/system-report.txt mutiaholanrewaju05@gmail.com


# Escape special characters
escaped_report=$(cat /tmp/mutiah-system-report.txt | python3 -c 'import json,sys; print(json.dumps(sys.stdin.read()))')


curl -X POST -H 'Content-type: application/json' \
--data "{\"text\":$escaped_report}" \
https://hooks.slack.com/services/**************************************

