#Container whitch all mounts data volume
CONTAINER=apache
DATAVOLUMES="var/lib/postgresql/data var/www/html var/www/mediawiki etc/openvpn var/log/httpd24"

BACKUP_DIR=/mnt/backup
BACKUP_LOG=$BACKUP_DIR/backup_`date +%Y_week%U`.log
BACKUP_FILENAME=docker_data`date +%Y%m%d`.tar.bz2

source ~yuriko/OpenStackAuth.sh
source /opt/rh/rh-php70/enable

# Delete old backup and log.
#/usr/bin/find $BACKUP_DIR -maxdepth 1 -mtime +1 -name 'docker_data*' -exec rm -f {} \;

docker exec -i $CONTAINER tar cfpj /temp.tar.bz2 $DATAVOLUMES --warning=no-file-changed 1>&2 >> $BACKUP_LOG
#docker cp $CONTAINER:/temp.tar.bz2 $BACKUP_DIR/$BACKUP_FILENAME
docker exec -i $CONTAINER cat /temp.tar.bz2|swift upload --object-name docker/$BACKUP_FILENAME -S 5368709119 Backup - 1>&2 >> $BACKUP_LOG

# /usr/bin/swift upload --object-name docker/docker_data`date +%Y%m%d`.tar.bz2 Backup $BACKUP_DIR/docker_data`date +%Y%m%d`.tar.bz2 1>&2 >> $BACKUP_LOG

# set Auto delete
/usr/bin/swift post -H "X-Delete-After: $(php /root/scripts_git/hanoi-tower-backup.php)" Backup docker/docker_data`date +%Y%m%d`.tar.bz2
