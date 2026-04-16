# SadServers – Saint John: What is writing to this log file?

## Problem
A log file was growing continuously, but it was unclear which process was writing to it.

## Investigation
Checked which process had the log file open and was actively writing to it.

## Commands used
```bash
ls -lh /var/log/bad.log
lsof /var/log/bad.log
ps -fp 590
kill -9 590
