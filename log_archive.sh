#!/bin/bash
find /home/ziad/SystemMonitor/logs -mtime +7 -exec mv {} /home/ziad/SystemMonitor/archive/ \;
