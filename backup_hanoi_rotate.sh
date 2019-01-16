#!/bin/bash

DAYS=$(/root/centos-admin-script/HanoiBackup/hanoi)
rm -rf /mnt/ftp-remote/keep${DAYS}day
mv /mnt/ftp-remote/temp /mnt/ftp-remote/keep${DAYS}day
mkdir /mnt/ftp-remote/temp
