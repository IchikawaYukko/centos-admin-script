#!/bin/sh

# Backup script.
#
# Usage:
# ./backup.sh full|diff SourceDevice BackupFilename
#

BACKUP_DIR=/mnt/backup
BACKUP_LOG=$BACKUP_DIR/backup_`date +%Y_week%U`.log
source ~yuriko/OpenStackAuth.sh
source /opt/rh/rh-php70/enable

# Check Args
if [ $# -ne 3 ]; then
  echo "Usage:" 1>&2
  echo "./backup.sh full|diff SourceDevice BackupFilename" 1>&2
  exit 1
fi

# Check commands

# Delete old backup and log.
/usr/bin/find $BACKUP_DIR -maxdepth 1 -mtime +1 -name 'NCroot_diff_*' -exec rm -f {} \;
/usr/bin/find $BACKUP_DIR -maxdepth 1 -mtime +32 -name 'backup_????_week??.log' -exec rm -f {} \;

# Create snapshot.
/bin/sync;/bin/sync;/bin/sync
/sbin/lvcreate --snapshot --size=500M --name backup_snap $2 >> $BACKUP_LOG

if [ "$1" = "full" ] ; then
	DUMP_LEVEL=-0uf
	ARCHIVER="gzip -1"
	EXT=gz
fi
if [ "$1" = "diff" ] ; then
	DUMP_LEVEL=-1uf
	ARCHIVER="bzip2 -9"
	EXT=bz2
fi

/sbin/dump $DUMP_LEVEL - /dev/mapper/conoha-backup_snap -h 0 2>> $BACKUP_LOG | ${ARCHIVER} > $BACKUP_DIR/NC$3_$1_`date +%m%d`.dump.$EXT

#	/sbin/dump -1uf - /dev/mapper/conoha-backup_snap -h 1 2>> $BACKUP_LOG | /usr/bin/bzip2 -9 | swift upload --object-name system/NC$3_diff_$(date +%m%d).dump.bz2 Backup -

# Remove snapshot.
/sbin/lvremove -f /dev/conoha/backup_snap >> $BACKUP_LOG

# Upload to Object Storage.
/usr/bin/swift upload --object-name system/NC$3_$1_`date +%m%d`.dump.$EXT Backup $BACKUP_DIR/NC$3_$1_`date +%m%d`.dump.$EXT 1>&2 >> $BACKUP_LOG

# set Auto delete
/usr/bin/swift post -H "X-Delete-After: $(php /root/scripts_git/hanoi-tower-backup.php)" Backup system/NC$3_$1_`date +%m%d`.dump.$EXT
