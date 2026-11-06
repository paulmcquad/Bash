#! /bin/bash

# nvim /etc/crontab
#
# @reboot gamer /home/gamer/Backup.sh
#
# @weekly gamer /home/gamer/Backup/date-backup.sh
#
# Backup Documents Script

DATE=$(date +%F_%H-%M)

SRC="$HOME/Documents"
DEST="$HOME/Backup"

LOG="$DEST/backup.log"

tar -czf "$DEST/backup_$DATE.tar.gz" "$SRC" >> "$LOG" 2>&1
sha256sum "$DEST/backup_$DATE.tar.gz" > "$DEST/backup_$DATE.sha256"


echo "Backup completed at $DATE" >> "$LOG"

# Check the Hash

sha256sum -c "$DEST/backup_$DATE.sha256" 2>&1 | grep OK
