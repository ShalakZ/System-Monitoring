#!/bin/bash

echo "[1/3] Starting Log Archiver..."
/home/ziad/SystemMonitor/log_archive.sh
echo "Archive Completed ..."

echo " "
echo "[2/3] Disk Status in Progress..."
/home/ziad/SystemMonitor/disk_monitor.sh
echo "Disk space checked ..."

echo " "
echo "[3/3] Checking system healh..."
/home/ziad/SystemMonitor/system_health.sh
echo " "
echo "System Checkup completed!"
