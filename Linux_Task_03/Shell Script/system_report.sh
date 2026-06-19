#!/bin/bash

echo "System Information Report"

echo "User: $(whoami)"

echo "Hostname: $(hostname)"

echo "Date and Time: $(date)"

echo "Current Directory: $(pwd)"

echo ""

echo "Memory Usage:"
free -h

echo ""

echo "Disk Usage:"
df -h

echo ""

echo "System Uptime:"
uptime

echo ""

echo "Kernel Information:"
uname -a
