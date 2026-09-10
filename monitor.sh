#!/bin/bash

LOG_FILE="logs/system-monitor.log"

echo "====================================" >> $LOG_FILE
echo "Linux Server Monitoring Report" >> $LOG_FILE
echo "Date: $(date)" >> $LOG_FILE
echo "====================================" >> $LOG_FILE

echo "Server Uptime:" >> $LOG_FILE
uptime >> $LOG_FILE

echo "" >> $LOG_FILE
echo "CPU Usage:" >> $LOG_FILE
top -bn1 | grep "Cpu(s)" >> $LOG_FILE

echo "" >> $LOG_FILE
echo "Memory Usage:" >> $LOG_FILE
free -h >> $LOG_FILE

echo "" >> $LOG_FILE
echo "Disk Usage:" >> $LOG_FILE
df -h >> $LOG_FILE

echo "" >> $LOG_FILE
echo "Top Processes:" >> $LOG_FILE
ps aux --sort=-%cpu | head -6 >> $LOG_FILE

echo "" >> $LOG_FILE
echo "Monitoring completed." >> $LOG_FILE
echo "" >> $LOG_FILE
