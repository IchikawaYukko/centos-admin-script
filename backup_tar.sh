#!/bin/sh

#
# tar Backup script.
#
# Usage:
# ./backup_tar.sh SourceDir
#

BACKUP_DIR=/mnt/backup
BACKUP_LOG=$BACKUP_DIR/backup_`date +%Y_week%U`.log
CONTAINER=Backup
FILENAME=NC$1_full_$(date +%Y%m%d).tar.bz2
MAX_FILESIZE=5368709120

source /opt/rh/rh-php70/enable
source ~yuriko/OpenStackAuth.sh

# Check Args
if [ $# -ne 1 ]; then
  echo "Usage:" 1>&2
  echo "./backup_tar.sh SourceDevice" 1>&2
  exit 1
fi

# Delete old backup.
#/usr/bin/find $BACKUP_DIR -maxdepth 1 -mtime +1 -name '*.tar.bz2' -exec rm -f {} \;

/bin/sync;/bin/sync;/bin/sync

/bin/echo `date -R` : $1 backup to ObjectStorage $FILENAME >> $BACKUP_LOG

# Do backup and upload
/bin/tar cfjp - -C / $1/ 2>> $BACKUP_LOG |swift upload --object-name $FILENAME -S $MAX_FILESIZE $CONTAINER - 1>&2 >> $BACKUP_LOG

# set Auto delete
/usr/bin/swift post -H "X-Delete-After: $(php /root/scripts_git/hanoi-tower-backup.php)" $CONTAINER $FILENAME

/bin/echo `date -R` : $1 backup complete! >> $BACKUP_LOG

