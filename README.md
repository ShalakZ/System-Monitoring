# 🖥️ Linux System Monitor & Maintenance Toolkit

A collection of Bash scripts designed to automate server health monitoring, log management, and disk usage alerts. This project was built to practice shell scripting, process management, and Cron automation.

## 📂 Project Structure

* **`master_monitor.sh`**: The main wrapper script. It orchestrates the execution of all other modules in a specific order to ensure data consistency.
* **`disk_monitor.sh`**: Monitors disk usage.
    * Alerts if usage exceeds **80%**.
    * Logs "DANGER" or "Safe" status with timestamps.
* **`system_health.sh`**: Captures key system metrics.
    * **Memory**: Calculates and logs RAM usage percentage.
    * **CPU**: logs the 1-minute, 5-minute, and 15-minute load averages.
* **`log_archive.sh`**: Automated housekeeping.
    * Scans specific directories for logs older than **7 days**.
    * Moves them to a dedicated `archive/` folder to keep the system clean.

## 🚀 Setup & Usage

### 1. Installation
Clone the repository to your local machine:
```bash
git clone [https://github.com/ShalakZ/System-Monitoring.git](https://github.com/ShalakZ/System-Monitoring.git)

### 2. Permissions
Ensure all scripts are executable:
```bash
chmod +x *.sh

### 3. Automation (Cron)
This toolkit is designed to run automatically via a Cron job. Add the following line to your crontab (crontab -e) to run the full suite every Monday at 6:00 AM:
```bash
0 6 * * 1 /home/ziad/Project/master_monitor.sh

🛠️ Tech Stack
* **Language: Bash Scripting
* **Tools: awk, find, free, df, uptime, crontab
* **OS: Linux (Tested on WSL2/Ubuntu)