#!/bin/bash

DAYS=$(/root/centos-admin-script/HanoiBackup/hanoi)
BASEDIR=/mnt/ftp-remote

rm -rf /mnt/ftp-remote/keep${DAYS}day
mv /mnt/ftp-remote/temp /mnt/ftp-remote/keep${DAYS}day
mkdir $BASEDIR/temp

# When 1st day of the month, Handle backup as full backup.
TODAY=$(date +%d)
if [ $TODAY = "1" ]; then
  cp $BASEDIR/keep1day/* $BASEDIR/full-backup/
fi
