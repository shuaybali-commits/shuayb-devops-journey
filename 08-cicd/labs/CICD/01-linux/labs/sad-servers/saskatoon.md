# SadServers – Saskatoon: Counting IPs

## Problem
A log file needed to be analysed to determine how many times each IP address appeared.

## Investigation
Inspected the log format and identified the field containing IP addresses.

## Commands used
cat /home/admin/access.log | awk '{print $1}' | sort | uniq -c | sort -nr | head -1 | awk '{print $2}'
