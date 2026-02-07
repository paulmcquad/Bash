#! /bin/bash

# nvim /etc/crontab
#
# 00 16 * * * gamer /home/gamer/Backup/backup.sh
#
# @reboot gamer /home/gamer/Backup.sh
#
# Backup Documents & Books Script

7z a -t7z /home/gamer/Backup/Documents.7z /home/gamer/Documents/ -mx9 -mmt8 -stl;
#7z a -t7z /home/gamer/Backup/Books.7z /home/gamer/Books/ -mx9 -mmt8 -stl;
