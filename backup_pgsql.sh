#!/bin/sh

# Please DB password put in to .pgpass file
# like that.
# localhost:*:*:username:password

source /home/yuriko/OpenStackAuth.sh
source /opt/rh/rh-php70/enable
BACKUP_DIR=/mnt/backup
BACKUP_LOG=$BACKUP_DIR/backup_`date +%Y_week%U`.log

# Check Args
#if [ $# -ne 1 ]; then
#  echo "Usage:" 1>&2
#  echo "./backup_pgsql.sh DBname" 1>&2
#  exit 1
#fi

# Delete old backup
#/usr/bin/find $BACKUP_DIR -maxdepth 1 -mtime +1 -name '*.sql.bz2' -exec rm -f {} \;

docker exec pgsql pg_dumpall -Upostgres --no-password | bzip2 | swift upload --object-name db/NCPostgreSQL`date +%Y%m%d`_backup.sql.bz2 -S 5368709119 Backup - 1>&2 >> $BACKUP_LOG

# Upload to Object Storage.
#/usr/bin/swift upload --object-name db/NCPostgreSQL`date +%Y%m%d`_backup.sql.bz2 Backup $BACKUP_DIR/NCPostgreSQL`date +%Y%m%d`_backup.sql.bz2 1>&2 >> /dev/null

# set Auto delete
/usr/bin/swift post -H "X-Delete-After: $(php /root/scripts_git/hanoi-tower-backup.php)" Backup db/NCPostgreSQL`date +%Y%m%d`_backup.sql.bz2
