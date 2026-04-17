# Linux Backup Script

Automated backup script built using Bash.

##  Description
This script backs up files from a target directory that were modified in the last 24 hours and compresses them into a `.tar.gz` file.

## Features
- Detects recently modified files
- Compresses using `tar`
- Supports automation using cron jobs

##  Tech Used
- Bash (Shell Scripting)
- Linux Commands

##  How to Run

```bash
bash backup.sh <target_directory> <destination_directory>
