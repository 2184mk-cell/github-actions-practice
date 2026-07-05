#!/bin/bash

echo "=================================="
echo "      SYSTEM INFORMATION"
echo "=================================="

echo "Hostname        : $(hostname)"
echo "Current User    : $(whoami)"
echo "Date & Time     : $(date)"
echo "Operating System: $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')"
echo "Kernel Version  : $(uname -r)"
echo "Architecture    : $(uname -m)"
echo

echo "=================================="
echoo "CPU INFORMATION"
echo "=================================="
lscpu | grep "Model name"
echo

echo "=================================="
echo "MEMORY USAGE"
echo "=================================="
free -h
echo

echo "=================================="
echo "DISK USAGE"
echo "=================================="
df -h
echo

echo "=================================="
echo "UPTIME"
echo "=================================="
uptime
echo

echo "=================================="
echo "NETWORK INFORMATION"
echo "=================================="
hostname -I
echo

echo "=================================="
echo "TOP 5 MEMORY CONSUMING PROCESSES"
echo "=================================="
ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -6
echo

echo "=================================="
echo "TOP 5 CPU CONSUMING PROCESSES"
echo "=================================="
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -6
echo

echo "=================================="
echo "SYSTEM INFORMATION COMPLETE"
echo "=================================="