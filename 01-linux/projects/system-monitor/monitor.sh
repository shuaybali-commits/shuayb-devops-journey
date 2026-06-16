#!/bin/bash

echo "=== SYSTEM INFO ==="

echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Current User: $(whoami)"
echo
 
echo "=== RESOURCE USAGE ==="

echo "CPU Information:"
top -bn1 | head -5 
echo "Memory Information:"
free -h 
echo "Disk Information:"
df -h /
echo
 
echo "=== TOP PROCESSES ==="

ps aux --sort=-%cpu | head -6
echo
 
echo "=== DISK CHECK ==="

DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$DISK_USAGE" -ge 80 ]; then
    echo "Warning: Disk usage is 80% or above (${DISK_USAGE}%)"
else
    echo "Disk usage is OK (${DISK_USAGE}%)"
fi
echo

echo "=== SERVICE STATUS ==="

if systemctl is-active --quiet docker; then
    echo "Docker: Running"
else
    echo "Docker: Not Running"
fi
echo 
