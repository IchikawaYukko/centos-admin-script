#!/bin/bash
cd $(dirname $0)
. password.conf

/usr/bin/docker exec -i mariadb /bin/sh -c "/usr/bin/mysqldump -A -u root --single-transaction --opt --password=$MYSQL_PASSWORD |bzip2 > /mariadb.sql.bz2"
/usr/bin/docker cp mariadb:/mariadb.sql.bz2 /mnt/ftp-remote/temp/mariadb_`date +%Y%m%d`.sql.bz2

